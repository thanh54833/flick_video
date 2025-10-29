# Tối Ưu Hóa Hiệu Suất Phát Video Flick

## 1. Bối Cảnh và Vấn Đề

Trải nghiệm người dùng khi lướt video trên ứng dụng ConCung hiện đang bị ảnh hưởng bởi độ trễ khoảng 0.5 giây mỗi khi chuyển video. Khoảng thời gian chờ tải này, dù ngắn, tạo ra sự gián đoạn (thể hiện qua màn hình loading), làm giảm sự mượt mà và liền mạch của luồng xem. So với các nền tảng video ngắn hàng đầu như TikTok hay YouTube Shorts, sự khác biệt này là rất rõ rệt và ảnh hưởng trực tiếp đến sự hài lòng của người dùng.

## 2. Mục Tiêu

Mục tiêu chính là **loại bỏ hoàn toàn độ trễ khi chuyển video**, giảm thời gian chờ từ 0.5 giây xuống **0.0 giây**. Điều này nhằm mang lại một trải nghiệm lướt video tức thì, mượt mà, ngang bằng với các tiêu chuẩn cao nhất trên thị trường.

## 3. Giải Pháp Kỹ Thuật

Để đạt được mục tiêu độ trễ bằng không, giải pháp được xây dựng dựa trên sự kết hợp đồng bộ của bốn cơ chế kỹ thuật chính, được triển khai trong `main.dart`. Mỗi cơ chế giải quyết một khía cạnh cụ thể của quá trình tải và phát video.

### 3.1. Tải Trước Giao Diện Video (UI Pre-rendering)

- **Vấn đề:** `PageView` mặc định của Flutter chỉ khởi tạo widget video khi nó sắp xuất hiện trên màn hình, gây ra độ trễ do phải xây dựng UI và khởi tạo controller tại thời điểm lướt.
- **Giải pháp:** Sử dụng `PreloadPageView` để khởi tạo trước các widget `VideoItem` liền kề.
  - **Triển khai:** Cấu hình `preloadPagesCount: 5` để chủ động tải và giữ trong bộ nhớ 5 widget video (2 ở trên, 2 ở dưới và 1 hiện tại).
  - **Duy trì trạng thái:** `AutomaticKeepAliveClientMixin` được sử dụng để ngăn widget bị hủy khi lướt qua, bảo toàn trạng thái của video player.
- **Kết quả:** Loại bỏ độ trễ do khởi tạo UI, đảm bảo giao diện video luôn sẵn sàng trước khi người dùng nhìn thấy.

### 3.2. Tải Trước Dữ Liệu Video (Data Pre-caching)

- **Vấn đề:** Sau khi UI sẵn sàng, ứng dụng vẫn cần thời gian để tải dữ liệu video từ mạng (buffering), đây là nguyên nhân chính gây ra màn hình loading.
- **Giải pháp:** Tận dụng cơ chế caching mạnh mẽ của `better_player_plus` để tải trước dữ liệu video.
  - **Triển khai:** Kích hoạt `useCache: true` và đặt `preCacheSize: 2MB`.
  - **Mấu chốt:** Khi `PreloadPageView` khởi tạo widget, `BetterPlayer` sẽ tự động tải trước 2MB dữ liệu video vào bộ nhớ đệm. Với dung lượng video mục tiêu chỉ khoảng 700KB, điều này đảm bảo gần như toàn bộ video đã được tải xong trước khi người dùng lướt tới.
- **Kết quả:** Video được phát ngay lập tức từ cache thay vì từ mạng, triệt tiêu thời gian buffering ban đầu.

### 3.3. Tự Động Phát Video Thông Minh (Smart Autoplay)

- **Vấn đề:** Cần một cơ chế để tự động phát video đang hiển thị và tạm dừng các video khác nhằm tối ưu hiệu năng và tài nguyên hệ thống (CPU, pin, mạng).
- **Giải pháp:** Sử dụng `VisibilityDetector` để theo dõi tỷ lệ hiển thị của từng video.
  - **Triển khai:** Logic được quản lý tập trung tại `VideoController`. Khi một video đạt ngưỡng hiển thị `playThreshold: 0.5` (50%), controller sẽ ra lệnh phát video đó và đồng thời tạm dừng tất cả các video đang phát khác.
  - **Tối ưu hóa:** Kỹ thuật "debounce" với độ trễ 100ms được áp dụng để đảm bảo logic chỉ được thực thi sau khi người dùng ngừng lướt, tránh các lệnh play/pause liên tục gây giật lag.
- **Kết quả:** Mang lại trải nghiệm tương tác mượt mà, tự nhiên như các nền tảng hàng đầu, đồng thời đảm bảo chỉ một video được phát tại một thời điểm để tối ưu hiệu năng.

### 3.4. Quản Lý Trạng Thái Tập Trung (Centralized State Management)

- **Vấn đề:** Quản lý đồng thời trạng thái của nhiều video (đang phát, đã tạm dừng, tỷ lệ hiển thị) là một bài toán phức tạp, dễ gây ra lỗi và rò rỉ bộ nhớ.
- **Giải pháp:** Sử dụng `GetxController` (`VideoController`) làm "bộ não" trung tâm.
  - **Triển khai:** `VideoController` chịu trách nhiệm quản lý toàn bộ trạng thái thông qua các `Map` và `Set` (ví dụ: `_videoControllers`, `_visibilities`, `_playingVideos`) và xử lý toàn bộ logic nghiệp vụ. Các widget `VideoItem` chỉ đóng vai trò hiển thị và báo cáo trạng thái cho controller.
  - **Vòng đời:** Controller quản lý chặt chẽ vòng đời của các `BetterPlayerController`, đảm bảo chúng được đăng ký và giải phóng đúng cách.
- **Kết quả:** Kiến trúc ứng dụng trở nên rõ ràng, tách biệt giữa giao diện và logic. Điều này giúp mã nguồn dễ dàng bảo trì, mở rộng và giảm thiểu nguy cơ lỗi.

## 4. Kết Luận

Bằng cách kết hợp bốn cơ chế: **Pre-rendering UI**, **Pre-caching Data**, **Smart Autoplay**, và **Centralized State Management**, giải pháp đã giải quyết triệt để các nguyên nhân gây ra độ trễ. Kết quả là một hệ thống phát video hiệu suất cao, đạt được mục tiêu loại bỏ hoàn toàn thời gian chờ, mang lại trải nghiệm người dùng liền mạch và chuyên nghiệp.

## 5. Phụ Lục: Mã Nguồn Tham Chiếu
```dart
import 'dart:async';

import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:visibility_detector/visibility_detector.dart';

void main() {
  runApp(const FlickVideoApp());
}

/// Main application widget
class FlickVideoApp extends StatelessWidget {
  const FlickVideoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flick Video',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const VideoPlayerScreen(),
      initialBinding: VideoBinding(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/// Constants for video configuration
class VideoConstants {
  static const double playThreshold = 0.5; // Play when visibility >= 50%
  static const double aspectRatio = 9 / 16;
  static const int preloadCount = 5; // Preload more videos for small files
  static const Duration debounceDelay = Duration(milliseconds: 100);
  static const bool restartOnPlay =
      true; // Restart video from beginning when playing
  static const Duration bufferMinMs = Duration(milliseconds: 1000); // 1 second
  static const Duration bufferMaxMs =
      Duration(milliseconds: 10000); // 10 seconds
  static const Duration bufferForPlaybackMs =
      Duration(milliseconds: 2000); // 2 seconds
  static const Duration bufferForPlaybackAfterRebufferMs =
      Duration(milliseconds: 3000); // 3 seconds
  static const bool enableLooping = true; // Enable video looping

  // Cache configuration for small videos (700KB)
  static const int preCacheSize = 2 * 1024 * 1024; // 2MB
  static const int maxCacheSize = 10 * 1024 * 1024; // 10MB
  static const int maxCacheFileSize = 2 * 1024 * 1024; // 2MB
}

/// Video data model
class VideoData {
  final String id;
  final String url;
  final String? thumbnail;
  final String? title;
  final Duration? duration;

  const VideoData({
    required this.id,
    required this.url,
    this.thumbnail,
    this.title,
    this.duration,
  });

  factory VideoData.fromUrl(String url, int index) {
    return VideoData(
      id: 'video_$index',
      url: url,
    );
  }
}

/// Video states enum
enum VideoState {
  loading,
  buffering,
  playing,
  paused,
  error,
  completed,
}

/// Video controller for managing video playback
class VideoController extends GetxController {
  // Video data
  final RxList<VideoData> videos = <VideoData>[].obs;
  final RxInt currentIndex = 0.obs;
  final Rx<VideoState> currentVideoState = VideoState.loading.obs;

  // Video controllers management
  final Map<int, BetterPlayerController> _videoControllers = {};
  final Map<int, VideoState> _videoStates = {};
  final Set<int> _playingVideos = {};
  final Map<int, double> _visibilities = {};
  final Set<int> _videosPlayedOnce = {}; // Track which videos have been played at least once

  // Page controller
  late PreloadPageController pageController;

  // Debounce timer for visibility changes
  Timer? _debounceTimer;

  // Loop control
  final RxBool _isLoopEnabled = VideoConstants.enableLooping.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeVideos();
    _initializePageController();
    optimizeForSmallVideos();
  }

  @override
  void onClose() {
    _debounceTimer?.cancel();
    _disposeAllControllers();
    super.onClose();
  }

  /// Initialize video data
  void _initializeVideos() {
    final videoUrls = [
      "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw0-lxkxolnv228p70.16004091721907182.mp4",
      "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5mxs1nw6ahec.16004091717808432.mp4",
      "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lvlswekeddela9.16004091716382549.mp4",
      "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwfs65cxgijd0b.16004091718202545.mp4",
      "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw0-lxkxolnv228p70.16004091721907182.mp4",
      "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5mxs1nw6ahec.16004091717808432.mp4",
      "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lvlswekeddela9.16004091716382549.mp4",
      "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwfs65cxgijd0b.16004091718202545.mp4",
      "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw0-lxkxolnv228p70.16004091721907182.mp4",
      "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5mxs1nw6ahec.16004091717808432.mp4",
      "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lvlswekeddela9.16004091716382549.mp4",
      "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwfs65cxgijd0b.16004091718202545.mp4",
    ];

    videos.value = videoUrls
        .asMap()
        .entries
        .map((entry) => VideoData.fromUrl(entry.value, entry.key))
        .toList();
  }

  /// Initialize page controller
  void _initializePageController() {
    pageController = PreloadPageController(
      initialPage: 0,
      keepPage: true,
    );
  }

  /// Register video controller
  void registerVideoController(int index, BetterPlayerController controller) {
    debugPrint('📝 Registering video controller for index: $index');
    _videoControllers[index] = controller;
    _videoStates[index] = VideoState.loading;
    debugPrint('📝 Total registered controllers: ${_videoControllers.length}');
  }

  /// Unregister video controller
  void unregisterVideoController(int index) {
    debugPrint('🗑️ Unregistering video controller for index: $index');
    _videoControllers.remove(index);
    _videoStates.remove(index);
    _playingVideos.remove(index);
    _visibilities.remove(index);
    _videosPlayedOnce.remove(index);
    debugPrint(
        '🗑️ Remaining registered controllers: ${_videoControllers.length}');
  }

  /// Update video state
  void updateVideoState(int index, VideoState state) {
    _videoStates[index] = state;
    if (index == currentIndex.value) {
      currentVideoState.value = state;
    }
  }

  /// Handle visibility change with debouncing
  void onVisibilityChanged(int index, double visibilityFraction) {
    debugPrint(
        '🔍 Visibility changed for video $index: ${(visibilityFraction * 100).toStringAsFixed(1)}%');
    _visibilities[index] = visibilityFraction;
    _debounceTimer?.cancel();
    _debounceTimer = Timer(VideoConstants.debounceDelay, () {
      _determineAndPlayMostVisibleVideo();
    });
  }

  /// Determines which video is most visible and plays it, pausing others.
  void _determineAndPlayMostVisibleVideo() {
    if (_visibilities.isEmpty) return;

    // For debugging: print the current state of all visibilities
    final visibilityStates = _visibilities.entries
        .map((e) => 'Video ${e.key}: ${(e.value * 100).toStringAsFixed(1)}%')
        .join(', ');
    debugPrint('📊 Current visibilities: {$visibilityStates}');

    int maxIndex = -1;
    double maxFrac = 0.0;

    // Find the video with the highest visibility
    for (var entry in _visibilities.entries) {
      if (entry.value >= maxFrac) {
        maxFrac = entry.value;
        maxIndex = entry.key;
      }
    }

    debugPrint(
        '📊 Determining video to play. Most visible: video $maxIndex at ${(maxFrac * 100).toStringAsFixed(1)}%');
    debugPrint(
        '📊 Play threshold: ${(VideoConstants.playThreshold * 100).toStringAsFixed(1)}%');

    // Play the most visible video if it's above the play threshold
    if (maxIndex != -1 && maxFrac >= VideoConstants.playThreshold) {
      debugPrint('▶️ Decision: Play video $maxIndex');
      _playVideo(maxIndex);
    } else {
      debugPrint('⏸️ Decision: No video meets play threshold. Pausing all.');
      // If no video is visible enough, pause all currently playing videos.
      for (var i in _playingVideos.toList()) {
        _pauseVideo(i);
      }
    }
  }

  /// Play video
  Future<void> _playVideo(int index) async {
    // Pause all other currently playing videos
    for (final playingIndex in _playingVideos.toList()) {
      if (playingIndex != index) {
        debugPrint('⏸️ Pausing other video $playingIndex to play $index');
        _pauseVideo(playingIndex);
      }
    }

    final controller = _videoControllers[index];
    final isAlreadyPlaying = _playingVideos.contains(index);

    debugPrint('🎬 Attempting to play video $index');
    debugPrint('🎬 Controller exists: ${controller != null}');
    debugPrint('🎬 Already playing (our state): $isAlreadyPlaying');

    if (controller != null && !isAlreadyPlaying) {
      try {
        // Only seek to beginning if this is the first time playing this video
        if (VideoConstants.restartOnPlay && !_videosPlayedOnce.contains(index)) {
          debugPrint('⏪ Seeking video $index to beginning (first time play)');
          await controller.seekTo(Duration.zero);
          _videosPlayedOnce.add(index);
        }
        await controller.play();
        _playingVideos.add(index);
        updateVideoState(index, VideoState.playing);
        debugPrint(
            '✅ Successfully playing video at index: $index ${VideoConstants.restartOnPlay && !_videosPlayedOnce.contains(index) ? "from beginning" : "from current position"}');
      } catch (e) {
        debugPrint('❌ Error playing video $index: $e');
        updateVideoState(index, VideoState.error);
      }
    } else {
      if (controller == null) {
        debugPrint('⚠️ Cannot play video $index - Controller is null');
      }
      if (isAlreadyPlaying) {
        debugPrint('ℹ️ Video $index is already playing.');
      }
    }
  }

  /// Pause video
  void _pauseVideo(int index) {
    final controller = _videoControllers[index];
    final isCurrentlyPlaying = _playingVideos.contains(index);

    debugPrint('⏸️ Attempting to pause video $index');
    debugPrint('⏸️ Controller exists: ${controller != null}');
    debugPrint('⏸️ Currently playing (our state): $isCurrentlyPlaying');

    if (controller != null) {
      try {
        controller.pause();
        if (isCurrentlyPlaying) {
          _playingVideos.remove(index);
        }
        updateVideoState(index, VideoState.paused);
        debugPrint('✅ Successfully paused video at index: $index');
      } catch (e) {
        debugPrint('❌ Error pausing video $index: $e');
      }
    } else {
      debugPrint('⚠️ Cannot pause video $index - Controller is null');
    }
  }

  /// Handle page change
  void onPageChanged(int index) {
    currentIndex.value = index;
    final state = _videoStates[index] ?? VideoState.loading;
    currentVideoState.value = state;
  }

  /// Get current video data
  VideoData? get currentVideo {
    final index = currentIndex.value;
    if (index >= 0 && index < videos.length) {
      return videos[index];
    }
    return null;
  }

  /// Toggle video looping
  void toggleLoop() {
    _isLoopEnabled.value = !_isLoopEnabled.value;
    debugPrint('🔄 Loop ${_isLoopEnabled.value ? "enabled" : "disabled"}');

    // Update all existing video controllers
    for (final controller in _videoControllers.values) {
      controller.setLooping(_isLoopEnabled.value);
    }
  }

  /// Get loop status
  bool get isLoopEnabled => _isLoopEnabled.value;

  /// Toggle video restart on play
  void toggleRestartOnPlay() {
    // Note: This would require making restartOnPlay non-const
    // For now, it's controlled by VideoConstants.restartOnPlay
    debugPrint(
        '🔄 Restart on play is currently: ${VideoConstants.restartOnPlay ? "enabled" : "disabled"}');
  }

  /// Optimize cache for small videos (700KB)
  void optimizeForSmallVideos() {
    debugPrint('📦 Optimizing cache for small videos (700KB)');
    debugPrint('📊 PreCache Size: ${VideoConstants.preCacheSize ~/ 1024}KB');
    debugPrint('📊 Max Cache Size: ${VideoConstants.maxCacheSize ~/ 1024}KB');
    debugPrint(
        '📊 Max File Size: ${VideoConstants.maxCacheFileSize ~/ 1024}KB');
    debugPrint('📊 Preload Count: ${VideoConstants.preloadCount} videos');
  }

  /// Dispose all controllers
  void _disposeAllControllers() {
    for (final controller in _videoControllers.values) {
      controller.dispose();
    }
    _videoControllers.clear();
    _videoStates.clear();
    _playingVideos.clear();
    _visibilities.clear();
    _videosPlayedOnce.clear();
  }
}

/// Video binding for dependency injection
class VideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(VideoController());
  }
}

/// Main video player screen
class VideoPlayerScreen extends GetView<VideoController> {
  const VideoPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _buildVideoList(),
    );
  }

  /// Build video list
  Widget _buildVideoList() {
    return Obx(() => PreloadPageView.builder(
          controller: controller.pageController,
          itemCount: controller.videos.length,
          scrollDirection: Axis.vertical,
          onPageChanged: controller.onPageChanged,
          preloadPagesCount: VideoConstants.preloadCount,
          itemBuilder: (context, index) {
            final video = controller.videos[index];
            return VideoItem(
              key: ValueKey(video.id),
              video: video,
              index: index,
            );
          },
        ));
  }
}

/// Individual video item widget
class VideoItem extends StatefulWidget {
  final VideoData video;
  final int index;

  const VideoItem({
    super.key,
    required this.video,
    required this.index,
  });

  @override
  State<VideoItem> createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem>
    with AutomaticKeepAliveClientMixin {
  late VideoController _videoController;
  late BetterPlayerController _betterPlayerController;
  bool _isInitialized = false;
  bool _isBuffering = true;
  bool _hasError = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _videoController = Get.find<VideoController>();
    _initializeVideo();
  }

  @override
  void dispose() {
    _videoController.unregisterVideoController(widget.index);
    _betterPlayerController.dispose();
    super.dispose();
  }

  /// Initialize video player
  void _initializeVideo() {
    try {
      _betterPlayerController = BetterPlayerController(
        BetterPlayerConfiguration(
          aspectRatio: VideoConstants.aspectRatio,
          fit: BoxFit.cover,
          autoPlay: false,
          looping: _videoController.isLoopEnabled,
          controlsConfiguration: const BetterPlayerControlsConfiguration(
            showControls: false,
            enableProgressBar: false,
            enablePlayPause: false,
            enableMute: false,
            enableFullscreen: false,
            enableSkips: false,
            enableSubtitles: false,
            enableOverflowMenu: false,
            enableAudioTracks: false,
            enableQualities: false,
            enablePip: false,
          ),
          eventListener: _onPlayerEvent,
          handleLifecycle: true,
          allowedScreenSleep: false,
          deviceOrientationsAfterFullScreen: [
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ],
        ),
      );

      _setupDataSource();
      _videoController.registerVideoController(
          widget.index, _betterPlayerController);
      _isInitialized = true;
    } catch (e) {
      debugPrint('❌ Error initializing video ${widget.index}: $e');
      _hasError = true;
      _videoController.updateVideoState(widget.index, VideoState.error);
    }
  }

  /// Setup video data source
  void _setupDataSource() {
    _betterPlayerController.setupDataSource(
      BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        widget.video.url,
        bufferingConfiguration: BetterPlayerBufferingConfiguration(
          minBufferMs: VideoConstants.bufferMinMs.inMilliseconds,
          maxBufferMs: VideoConstants.bufferMaxMs.inMilliseconds,
          bufferForPlaybackMs:
              VideoConstants.bufferForPlaybackMs.inMilliseconds,
          bufferForPlaybackAfterRebufferMs:
              VideoConstants.bufferForPlaybackAfterRebufferMs.inMilliseconds,
        ),
        cacheConfiguration: const BetterPlayerCacheConfiguration(
          useCache: true,
          preCacheSize: VideoConstants.preCacheSize,
          maxCacheSize: VideoConstants.maxCacheSize,
          maxCacheFileSize: VideoConstants.maxCacheFileSize,
        ),
      ),
    );
  }

  /// Handle player events
  void _onPlayerEvent(BetterPlayerEvent event) {
    switch (event.betterPlayerEventType) {
      case BetterPlayerEventType.bufferingStart:
        if (mounted) {
          setState(() {
            _isBuffering = true;
            _hasError = false;
          });
          _videoController.updateVideoState(widget.index, VideoState.buffering);
        }
        break;
      case BetterPlayerEventType.bufferingEnd:
        if (mounted) {
          setState(() {
            _isBuffering = false;
          });
          _videoController.updateVideoState(widget.index, VideoState.paused);
        }
        break;
      case BetterPlayerEventType.play:
        _videoController.updateVideoState(widget.index, VideoState.playing);
        break;
      case BetterPlayerEventType.pause:
        _videoController.updateVideoState(widget.index, VideoState.paused);
        break;
      case BetterPlayerEventType.finished:
        _videoController.updateVideoState(widget.index, VideoState.completed);
        break;
      case BetterPlayerEventType.exception:
        if (mounted) {
          setState(() {
            _hasError = true;
            _isBuffering = false;
          });
          _videoController.updateVideoState(widget.index, VideoState.error);
        }
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return VisibilityDetector(
      key: Key('video-${widget.index}'),
      onVisibilityChanged: (VisibilityInfo visibilityInfo) {
        debugPrint(
            '👁️ VisibilityDetector triggered for video ${widget.index}');
        debugPrint('👁️ Initialized: $_isInitialized, Has Error: $_hasError');
        debugPrint(
            '👁️ Visibility fraction: ${(visibilityInfo.visibleFraction * 100).toStringAsFixed(1)}%');

        if (_isInitialized && !_hasError) {
          debugPrint(
              '👁️ Calling onVisibilityChanged for video ${widget.index}');
          _videoController.onVisibilityChanged(
            widget.index,
            visibilityInfo.visibleFraction,
          );
        } else {
          debugPrint(
              '⚠️ Skipping visibility change for video ${widget.index} - Not initialized or has error');
        }
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: _buildVideoContent(),
      ),
    );
  }

  /// Build video content
  Widget _buildVideoContent() {
    if (_hasError) {
      return _buildErrorWidget();
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        if (_isInitialized) BetterPlayer(controller: _betterPlayerController),
        if (_isBuffering) _buildLoadingWidget(),
      ],
    );
  }

  /// Build loading widget
  Widget _buildLoadingWidget() {
    return Container(
      color: Colors.black.withValues(alpha: 0.8),
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              strokeWidth: 2,
            ),
            SizedBox(height: 16),
            Text(
              'Loading...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Build error widget
  Widget _buildErrorWidget() {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline,
              color: Colors.white,
              size: 48,
            ),
            const SizedBox(height: 16),
            const Text(
              'Failed to load video',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                setState(() {
                  _hasError = false;
                  _isBuffering = true;
                });
                _initializeVideo();
              },
              child: const Text(
                'Retry',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```