import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';

main() {
  runApp(
    const MaterialApp(
      home: App(),
    ),
  );
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          if (index == 3) {
            return videoItems();
          } else {
            return Container(
              height: 100,
              color: Colors.blue,
              margin: const EdgeInsets.only(bottom: 10),
            );
          }
        },
        itemCount: 100,
      ),
    );
  }

  var lists = [
    "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw0-lxkxolnv228p70.16004091721907182.mp4",
    "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5mxs1nw6ahec.16004091717808432.mp4",
    "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khwe-lxb0g09s3pax44.default.mp4",
    "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lvlswekeddela9.16004091716382549.mp4",
    "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwfs65cxgijd0b.16004091718202545.mp4",
    "https://down-aka-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw1-lx6nwt4mksex7a.default.mp4",
  ];

  videoItems() {
    return Container(
      color: Colors.red,
      margin: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 300,
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            var uri = lists[index];
            return VideoItem(
              uri: uri,
            );
          },
          itemCount: lists.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class VideoItem extends StatefulWidget {
  final String uri;

  const VideoItem({required this.uri, super.key});

  @override
  State<VideoItem> createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 280,
      color: Colors.white,
      margin: const EdgeInsets.only(right: 10),
      child: BetterPlayerListVideoPlayer(
        BetterPlayerDataSource(
          BetterPlayerDataSourceType.network,
          widget.uri,
        ),
        key: Key(widget.hashCode.toString()),
        playFraction: 0.8,
        autoPlay: true,
        autoPause: true,
        configuration: const BetterPlayerConfiguration(
          aspectRatio: 9 / 16,
          fit: BoxFit.fitWidth,
          controlsConfiguration: BetterPlayerControlsConfiguration(
            showControls: false,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
