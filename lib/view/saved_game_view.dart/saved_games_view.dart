import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

import '../../model/data_service.dart';
import '../home/components/game_trailer.dart';
import '../home/home_view.dart';
import 'components/saved_games.dart';

class SavedGamed extends StatefulWidget {
  const SavedGamed({super.key});

  @override
  State<SavedGamed> createState() => _SavedGamedState();
}

class _SavedGamedState extends State<SavedGamed> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dummyGames.length,
          itemBuilder: (context, index) {
            return DelayedDisplay(
              delay: Duration(milliseconds: index * 200),
              slidingCurve: Curves.ease,
              slidingBeginOffset: const Offset(1, 0),
              child: GestureDetector(
                onTap: () => setState(() {
                  controller.pause();
                  currentSelectedGame.value = index;
                }),
                child: ValueListenableBuilder(
                  valueListenable: currentSelectedGame,
                  builder: (ctx, value, child) {
                    return SavedGames(index: index);
                  },
                ),
              ),
            );
          }),
    );
  }
}
