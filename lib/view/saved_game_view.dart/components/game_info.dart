import 'package:flutter/material.dart';

import '../../../model/data_service.dart';
import '../../resources/color_manager.dart';
import '../../resources/icon_manager.dart';

class GameInfo extends StatelessWidget {
  const GameInfo({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 700,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dummyGames[index].name,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                    size: IconSize.extraLarge,
                    color: ColorManager.text,
                  ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            dummyGames[index].descreption,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
