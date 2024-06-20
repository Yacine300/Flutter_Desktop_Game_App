import 'package:flutter/material.dart';

import '../../../model/data_service.dart';
import '../../resources/value_manager.dart';
import '../home_view.dart';

class OneGame extends StatelessWidget {
  final int index;
  const OneGame({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MarginManager.m14),
      child: Stack(
        children: [
          ValueListenableBuilder(
            valueListenable: currentSelectedGame,
            builder: (ctx, value, child) {
              return Container(
                width: 250,
                height: 220,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: index != value
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.primary.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    dummyGames[index].name,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ]),
              );
            },
          ),
          Container(
            width: 250,
            height: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(dummyGames[index].imageAsset))),
          )
        ],
      ),
    );
  }
}
