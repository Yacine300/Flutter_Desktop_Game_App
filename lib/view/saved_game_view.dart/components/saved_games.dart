import 'package:flutter/material.dart';
import 'package:game_app/view/saved_game_view.dart/components/play_game.dart';
import 'package:game_app/view/saved_game_view.dart/components/video_episode_container.dart';

import 'body_background.dart';
import 'game_info.dart';

class SavedGames extends StatelessWidget {
  final int index;
  const SavedGames({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BodyPlusBackground(index: index);
  }
}

class SavedGamesBody extends StatelessWidget {
  const SavedGamesBody({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              PlayGame(index: index),
              VideoEpisodeContainer(index: index),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          GameInfo(index: index),
        ],
      ),
    );
  }
}
