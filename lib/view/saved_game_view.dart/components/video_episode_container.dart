import 'package:flutter/material.dart';
import 'package:game_app/view/saved_game_view.dart/components/video_episode.dart';

import '../../resources/value_manager.dart';

class VideoEpisodeContainer extends StatelessWidget {
  const VideoEpisodeContainer({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.3)),
      margin: const EdgeInsets.symmetric(
          horizontal: MarginManager.m12, vertical: MarginManager.m12),
      padding: const EdgeInsets.symmetric(
          horizontal: PaddingManager.p8, vertical: PaddingManager.p8),
      child: VideoEpisodes(index: index),
    );
  }
}
