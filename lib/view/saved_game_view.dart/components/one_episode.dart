import 'package:flutter/material.dart';

import '../../../model/data_service.dart';
import '../../resources/color_manager.dart';
import '../../resources/icon_manager.dart';
import '../../resources/value_manager.dart';

class OneEpisode extends StatelessWidget {
  const OneEpisode({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(bottom: PaddingManager.p8),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(dummyGames[index].imageAsset)),
            borderRadius:
                BorderRadius.circular(5.0), // Radius for the container
          ),
          child: const InkWell(
            child: Icon(
                size: IconSize.extraLarge,
                color: ColorManager.text,
                Icons.play_circle_rounded),
          ),
        ),
        Text(
          "Episode 01 : Memories",
          style: Theme.of(context).textTheme.bodySmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
