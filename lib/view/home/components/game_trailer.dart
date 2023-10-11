import 'package:flutter/material.dart';
import 'package:game_app/view/home/components/video_player.dart';
import 'package:video_player/video_player.dart';

import '../../resources/value_manager.dart';

late VideoPlayerController controller;
late Future<void> initializeVideoPlayerFuture;

class GameTrailer extends StatefulWidget {
  final String gameVideoUrl;
  const GameTrailer({
    required this.gameVideoUrl,
  });

  @override
  State<GameTrailer> createState() => _GameTrailerState();
}

class _GameTrailerState extends State<GameTrailer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller =
        VideoPlayerController.networkUrl(Uri.parse(widget.gameVideoUrl));

    initializeVideoPlayerFuture = controller.initialize();

    return Stack(
      children: [
        VideoPlayerWidget(
          videoController: controller,
          initializeVideoPlayerFuture: initializeVideoPlayerFuture,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: MarginManager.m8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: controller.value.isPlaying
                      ? const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.pause,
                          color: Colors.white,
                        ),
                  onPressed: () {
                    if (controller.value.isPlaying) {
                      controller.pause();
                    } else {
                      controller.play();
                    }
                  },
                ),
                ValueListenableBuilder(
                  valueListenable: controller,
                  builder: ((context, value, child) {
                    int minute = controller.value.position.inMinutes;
                    int second = controller.value.position.inSeconds % 60;
                    return Text("$minute:$second",
                        style: Theme.of(context).textTheme.bodySmall);
                  }),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
