import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preload_page_view/preload_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(
    //   title: 'Flutter Demo',
    //   home: CachePage(),
    // );
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: const VideoPlayerScreen(),
      initialBinding: BindingsBuilder.put(
        () => VideoController(),
      ),
    );
  }
}

class VideoController extends GetxController {
  var lists = [
    "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw0-lxkxolnv228p70.16004091721907182.mp4",
    "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5mxs1nw6ahec.16004091717808432.mp4",
    "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khwe-lxb0g09s3pax44.default.mp4",
    "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lvlswekeddela9.16004091716382549.mp4",
    "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwfs65cxgijd0b.16004091718202545.mp4",
    "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw1-lx6nwt4mksex7a.default.mp4",
  ];

  var current = 99.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    2.delay(
      () {
        current.value = 0;
      },
    );
  }
}

class VideoPlayerScreen extends GetView<VideoController> {
  const VideoPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: PreloadPageView.builder(
        itemBuilder: (context, index) {
          var uri = controller.lists[index];
          return VideoItem(
            index: index,
            uri: uri,
          );
        },
        itemCount: controller.lists.length,
        controller: PreloadPageController(initialPage: 0),
        onPageChanged: (value) {
          //print("onPageChanged -> $value");
          controller.current.value = value;
        },
        scrollDirection: Axis.vertical,
      ),
      floatingActionButton: InkWell(
        onTap: () {
          print("onActive -> ${controller.current.value} -> ${pageIndex}");
        },
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}

var pageIndex = [];

class VideoItem extends StatefulWidget {
  final String uri;
  final int index;

  const VideoItem({required this.uri, required this.index, super.key});

  @override
  State<VideoItem> createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  //late VideoPlayerController _controller;
  //var videoController = Get.find<VideoController>();
  late BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    print("initState ->  -> ${widget.index}");

    _betterPlayerController = BetterPlayerController(
      const BetterPlayerConfiguration(
        aspectRatio: 9 / 16,
        fit: BoxFit.contain,
        controlsConfiguration: BetterPlayerControlsConfiguration(
          showControls: false,
        ),
      ),
    )..setupDataSource(
        BetterPlayerDataSource(
          BetterPlayerDataSourceType.network,
          widget.uri,
          bufferingConfiguration: const BetterPlayerBufferingConfiguration(
            minBufferMs: 2000, // 2 millisecond
            maxBufferMs: 600000, // 60mb
            bufferForPlaybackMs: 3000, // 3mb
            bufferForPlaybackAfterRebufferMs: 5000, // 5mb
          ),
        ),
      );
    _betterPlayerController.addEventsListener(eventListener);
    _betterPlayerController.play();
  }

  var _isBuffering = true;

  eventListener(BetterPlayerEvent event) {
    if (event.betterPlayerEventType == BetterPlayerEventType.bufferingEnd) {
      //_betterPlayerController.removeEventsListener(eventListener);
      setState(() {
        _isBuffering = false;
      });
    }
  }

  @override
  void dispose() {
    print("dispose ->  -> ${widget.index}");
    pageIndex.remove(widget.index);
    _betterPlayerController.dispose();
    _betterPlayerController.removeEventsListener(eventListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        BetterPlayer(
          controller: _betterPlayerController,
        ),
        if (_isBuffering)
          Positioned.fill(
            child: Container(
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "loading... ",
                ),
              ),
            ),
          )
        else
          const SizedBox.shrink()
      ],
    ); //VideoPlayer(_controller);
  }
}
