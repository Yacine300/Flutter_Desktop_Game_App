import 'package:flutter/cupertino.dart';
import 'package:game_app/view/saved_game_view.dart/components/one_episode.dart';

class VideoEpisodes extends StatelessWidget {
  const VideoEpisodes({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.4,
        crossAxisCount: 1, // 2 columns
      ),
      itemBuilder: (BuildContext context, int i) {
        return OneEpisode(index: index);
      },
    );
  }
}
