import 'package:flutter/material.dart';
import 'package:game_app/view/home/components/game_trailer.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final initializeVideoPlayerFuture;
  final VideoPlayerController videoController;

  VideoPlayerWidget(
      {required this.initializeVideoPlayerFuture,
      required this.videoController});

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: VideoPlayer(widget.videoController),
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
          );
        }
      },
    );
  }
}
