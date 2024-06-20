import 'package:flutter/material.dart';
import 'package:media_kit_video/media_kit_video.dart';

class VideoPlayerWidget extends StatefulWidget {
  final VideoController videoController;

  const VideoPlayerWidget({super.key, required this.videoController});

  @override
  VideoPlayerWidgetState createState() => VideoPlayerWidgetState();
}

class VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Video(
        height: 300,
        width: 300,
        fit: BoxFit.cover,
        filterQuality: FilterQuality.high,
        controller: widget.videoController,
      ),
    );
  }
}
