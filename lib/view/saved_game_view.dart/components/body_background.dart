import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';
import 'package:game_app/view/saved_game_view.dart/components/saved_games.dart';

import '../../../model/data_service.dart';

class BodyPlusBackground extends StatelessWidget {
  const BodyPlusBackground({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /////////////////
        ////
        Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          child: Container(
            height: 1000,
            width: 800,
            decoration: BoxDecoration(
                image: DecorationImage(
                    opacity: 0.09,
                    fit: BoxFit.cover,
                    image: AssetImage(dummyGames[index].bigImage))),
          ),
        ),
        Positioned(
          right: 50,
          bottom: 10,
          child: DelayedDisplay(
            slidingBeginOffset: const Offset(0, 1),
            delay: const Duration(milliseconds: 300),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    opacity: 0.3,
                    image: AssetImage(dummyGames[index].logo),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Positioned(
          right: 10,
          child: DelayedDisplay(
            slidingBeginOffset: const Offset(0, 1),
            delay: const Duration(milliseconds: 300),
            child: Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    opacity: 0.5,
                    image: AssetImage(dummyGames[index].logo),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Positioned(
          right: 70,
          bottom: 25,
          child: DelayedDisplay(
            slidingBeginOffset: const Offset(0, 1),
            delay: const Duration(milliseconds: 300),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    opacity: 0.3,
                    image: AssetImage(dummyGames[index].logo),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Positioned(
          left: 50,
          bottom: 25,
          child: DelayedDisplay(
            slidingBeginOffset: const Offset(0, 1),
            delay: const Duration(milliseconds: 300),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    opacity: 0.3,
                    image: AssetImage(dummyGames[index].logo),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Positioned(
          left: 60,
          bottom: 15,
          child: DelayedDisplay(
            slidingBeginOffset: const Offset(0, 1),
            delay: const Duration(milliseconds: 300),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    opacity: 0.6,
                    image: AssetImage(dummyGames[index].logo),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Positioned(
          right: 100,
          bottom: 50,
          child: DelayedDisplay(
            slidingBeginOffset: const Offset(0, 1),
            delay: const Duration(milliseconds: 300),
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    opacity: 0.6,
                    image: AssetImage(dummyGames[index].logo),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        SavedGamesBody(index: index),
      ],
    );
  }
}
