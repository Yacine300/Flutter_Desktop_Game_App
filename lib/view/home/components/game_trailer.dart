import 'package:flutter/material.dart';
import 'package:game_app/view/home/components/video_player.dart';
import 'package:game_app/view/resources/icon_manager.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../../resources/value_manager.dart';

final player = Player();
var controller = VideoController(player);

class GameTrailer extends StatefulWidget {
  final String gameVideoUrl;
  const GameTrailer({
    super.key,
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
  void didUpdateWidget(covariant GameTrailer oldWidget) {
    super.didUpdateWidget(oldWidget);
    player.remove(0);
    player.open(Media(Uri.parse(widget.gameVideoUrl).toString()));
    player.pause();
    controller = VideoController(player);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VideoPlayerWidget(
          videoController: controller,
        ),
        Positioned(
          bottom: 100,
          left: 100,
          right: 100,
          top: 100,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: MarginManager.m8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: !controller.player.state.playing
                      ? const Icon(
                          Icons.play_circle_outline_rounded,
                          color: Colors.white,
                          size: IconSize.extraLarge,
                        )
                      : SizedBox(),
                  onPressed: () {
                    if (controller.player.state.playing) {
                      controller.player.pause();
                      setState(() {});
                    } else {
                      controller.player.play();
                      setState(() {});
                    }
                  },
                ),
                /*ValueListenableBuilder(
                  valueListenable: controller,
                  builder: ((context, value, child) {
                    int minute = controller.value.position.inMinutes;
                    int second = controller.value.position.inSeconds % 60;
                    return Text("$minute:$second",
                        style: Theme.of(context).textTheme.bodySmall);
                  }),
                ),*/
              ],
            ),
          ),
        ),
      ],
    );
  }
}
