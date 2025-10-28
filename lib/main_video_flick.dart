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
  static const double visibilityThreshold = 0.6;
  static const double aspectRatio = 9 / 16;
  static const int preloadCount = 3;
  static const Duration debounceDelay = Duration(milliseconds: 100);
  static const Duration bufferMinMs = Duration(milliseconds: 2000);
  static const Duration bufferMaxMs = Duration(milliseconds: 600000);
  static const Duration bufferForPlaybackMs = Duration(milliseconds: 3000);
  static const Duration bufferForPlaybackAfterRebufferMs = Duration(milliseconds: 5000);
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
  
  // Page controller
  late PreloadPageController pageController;
  
  // Debounce timer for visibility changes
  Timer? _debounceTimer;

  @override
  void onInit() {
    super.onInit();
    _initializeVideos();
    _initializePageController();
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
    _videoControllers[index] = controller;
    _videoStates[index] = VideoState.loading;
  }

  /// Unregister video controller
  void unregisterVideoController(int index) {
    _videoControllers.remove(index);
    _videoStates.remove(index);
    _playingVideos.remove(index);
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
    _debounceTimer?.cancel();
    _debounceTimer = Timer(VideoConstants.debounceDelay, () {
      _handleVisibilityChange(index, visibilityFraction);
    });
  }

  /// Handle visibility change
  void _handleVisibilityChange(int index, double visibilityFraction) {
    if (visibilityFraction >= VideoConstants.visibilityThreshold) {
      _playVideo(index);
    } else {
      _pauseVideo(index);
    }
  }

  /// Play video
  void _playVideo(int index) {
    final controller = _videoControllers[index];
    if (controller != null && !_playingVideos.contains(index)) {
      try {
        controller.play();
        _playingVideos.add(index);
        updateVideoState(index, VideoState.playing);
        debugPrint('🎬 Playing video at index: $index');
      } catch (e) {
        debugPrint('❌ Error playing video $index: $e');
        updateVideoState(index, VideoState.error);
      }
    }
  }

  /// Pause video
  void _pauseVideo(int index) {
    final controller = _videoControllers[index];
    if (controller != null && _playingVideos.contains(index)) {
      try {
        controller.pause();
        _playingVideos.remove(index);
        updateVideoState(index, VideoState.paused);
        debugPrint('⏸️ Pausing video at index: $index');
      } catch (e) {
        debugPrint('❌ Error pausing video $index: $e');
      }
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

  /// Dispose all controllers
  void _disposeAllControllers() {
    for (final controller in _videoControllers.values) {
      controller.dispose();
    }
    _videoControllers.clear();
    _videoStates.clear();
    _playingVideos.clear();
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
      floatingActionButton: _buildDebugButton(),
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

  /// Build debug button
  Widget _buildDebugButton() {
    return FloatingActionButton(
      onPressed: () {
        final currentIndex = controller.currentIndex.value;
        final currentVideo = controller.currentVideo;
        final state = controller.currentVideoState.value;
        
        debugPrint('📊 Current Index: $currentIndex');
        debugPrint('📹 Current Video: ${currentVideo?.id}');
        debugPrint('🎭 Current State: $state');
        
        // Show info dialog
        Get.dialog(
          AlertDialog(
            title: const Text('Video Info'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Index: $currentIndex'),
                Text('Video ID: ${currentVideo?.id}'),
                Text('State: $state'),
                Text('URL: ${currentVideo?.url}'),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Get.back(),
                child: const Text('Close'),
              ),
            ],
          ),
        );
      },
      backgroundColor: Colors.red.withValues(alpha: 0.8),
      child: const Icon(Icons.info, color: Colors.white),
    );
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
          looping: false,
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
      _videoController.registerVideoController(widget.index, _betterPlayerController);
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
          bufferForPlaybackMs: VideoConstants.bufferForPlaybackMs.inMilliseconds,
          bufferForPlaybackAfterRebufferMs: VideoConstants.bufferForPlaybackAfterRebufferMs.inMilliseconds,
        ),
        cacheConfiguration: const BetterPlayerCacheConfiguration(
          useCache: true,
          preCacheSize: 10 * 1024 * 1024, // 10MB
          maxCacheSize: 100 * 1024 * 1024, // 100MB
          maxCacheFileSize: 50 * 1024 * 1024, // 50MB
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
        if (_isInitialized && !_hasError) {
          _videoController.onVisibilityChanged(
            widget.index,
            visibilityInfo.visibleFraction,
          );
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
        if (_isInitialized)
          BetterPlayer(controller: _betterPlayerController),
        if (_isBuffering)
          _buildLoadingWidget(),
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