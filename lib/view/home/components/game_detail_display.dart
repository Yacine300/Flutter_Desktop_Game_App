import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

import '../../../model/data_service.dart';
import '../../resources/value_manager.dart';
import '../home_view.dart';
import 'game_trailer.dart';

class GameDetailsDisplay extends StatefulWidget {
  final BoxConstraints constraints;
  const GameDetailsDisplay({
    required this.constraints,
    super.key,
  });

  @override
  State<GameDetailsDisplay> createState() => _GameDetailsDisplayState();
}

class _GameDetailsDisplayState extends State<GameDetailsDisplay> {
  late ValueNotifier<double> valueNotifier;
  @override
  void initState() {
    super.initState();
    valueNotifier = ValueNotifier(8.0);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        width: 300,
        height: widget.constraints.maxHeight,
        padding: const EdgeInsets.symmetric(
            horizontal: PaddingManager.p14, vertical: PaddingManager.p14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).primaryColorDark),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ValueListenableBuilder(
                valueListenable: currentSelectedGame,
                builder: (context, value, child) {
                  return Container(
                    height: 100,
                    margin: const EdgeInsets.only(bottom: MarginManager.m12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(dummyGames[value].imageAsset))),
                  );
                }),
            ValueListenableBuilder(
                valueListenable: currentSelectedGame,
                builder: (context, value, child) {
                  return Text(dummyGames[value].name,
                      style: Theme.of(context).textTheme.titleSmall);
                }),
            const SizedBox(
              height: PaddingManager.p12,
            ),
            Text(
              "about",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: PaddingManager.p12,
            ),
            ValueListenableBuilder(
                valueListenable: currentSelectedGame,
                builder: (context, value, child) {
                  return Text(dummyGames[value].descreption,
                      style: Theme.of(context).textTheme.headlineSmall);
                }),
            const SizedBox(
              height: PaddingManager.p12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rating",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  "see All review",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
            const SizedBox(
              height: PaddingManager.p12,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              // Example 1
              SimpleCircularProgressBar(
                animationDuration: 2,
                startAngle: 0,
                maxValue: 15,
                valueNotifier: valueNotifier,
                onGetText: (value) {
                  return Text(
                    '${value.toInt()}',
                    style: Theme.of(context).textTheme.bodySmall,
                  );
                },
                progressStrokeWidth: 3,

                //backStrokeWidth: 5,
                size: 40,
                progressColors: [
                  Theme.of(context).colorScheme.primary,
                ],
                backColor: Theme.of(context).primaryColorDark,
              ),
              SimpleCircularProgressBar(
                animationDuration: 2,
                startAngle: 0,
                onGetText: (value) {
                  return Text(
                    '${value.toInt()}',
                    style: Theme.of(context).textTheme.bodySmall,
                  );
                },
                maxValue: 50,
                progressStrokeWidth: 3,
                size: 40,
                valueNotifier: valueNotifier,
                // backStrokeWidth: 5,
                // size: 10,
                progressColors: [
                  Theme.of(context).colorScheme.primary,
                ],
                backColor: Theme.of(context).primaryColorDark,
              ),
              SimpleCircularProgressBar(
                animationDuration: 2,
                progressStrokeWidth: 3,
                maxValue: 80,
                //backStrokeWidth: 5,
                size: 40,
                onGetText: (value) {
                  return Text(
                    '${value.toInt()}',
                    style: Theme.of(context).textTheme.bodySmall,
                  );
                },
                valueNotifier: valueNotifier,
                startAngle: 0,
                progressColors: [
                  Theme.of(context).colorScheme.primary,
                ],
                backColor: Theme.of(context).primaryColorDark,
              ),
            ]),
            const SizedBox(
              height: PaddingManager.p12,
            ),
            Text(
              "Trailer",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: PaddingManager.p14,
            ),
            ValueListenableBuilder(
              valueListenable: currentSelectedGame,
              builder: (ctx, value, child) {
                return GameTrailer(gameVideoUrl: dummyGames[value].trailerUrl);
              },
            ),
          ],
        ),
      ),
    );
  }
}
