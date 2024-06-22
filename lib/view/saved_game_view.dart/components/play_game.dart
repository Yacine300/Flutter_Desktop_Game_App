import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../../../model/data_service.dart';

final player = Player();
final ValueNotifier<VideoController> controller =
    ValueNotifier(VideoController(player));

class PlayGame extends StatefulWidget {
  const PlayGame({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<PlayGame> createState() => _PlayGameState();
}

class _PlayGameState extends State<PlayGame> {
  @override
  void initState() {
    player.remove(0);
    player
        .open(Media(Uri.parse(dummyGames[widget.index].trailerUrl).toString()));
    controller.value = VideoController(player);
    player.pause();
    //initializeVideoPlayerFuture = controller.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      height: 400,
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: 700,
                height: 400,
                child: Video(
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                  controller: controller.value,
                ),
              ),
            ),
          ),
          /* Positioned.fill(
            bottom: 200,
            left: 250,
            right: 200,
            top: 130,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /*IconButton(
                    icon: controller.value.player.state.playing
                        ? Icon(
                            Icons.pause_circle_filled_rounded,
                            color: Colors.transparent,
                            size: 100,
                          )
                        : const Icon(
                            Icons.play_circle_fill_rounded,
                            color: Colors.white,
                            size: 100,
                          ),
                    onPressed: () {
                      if (controller.value.player.state.playing) {
                        controller.value.player.pause();
                        setState(() {});
                      } else {
                        controller.value.player.play();
                        setState(() {});
                      }
                    },
                  ),*/
                  /* ValueListenableBuilder(
                    valueListenable: controller,
                    builder: (context, value, child) {
                      int minute = controller.value.position.inMinutes;
                      int second = controller.value.position.inSeconds % 60;
                      return Text(
                        "$minute:${second.toString().padLeft(2, '0')}",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.white),
                      );
                    },
                  ),*/
                ],
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
