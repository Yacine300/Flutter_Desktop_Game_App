import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/cupertino.dart';

import '../../../model/data_service.dart';
import '../../saved_game_view.dart/saved_games_view.dart';
import '../home_view.dart';
import 'game_detail_display.dart';
import 'home_body.dart';

class HomeBodyCore extends StatelessWidget {
  const HomeBodyCore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: navBarIcons.length,
        scrollDirection: Axis.vertical,
        onPageChanged: (value) {
          currentPage.value = value;
        },
        itemBuilder: (context, index) {
          return LayoutBuilder(builder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                index != 1
                    ? const HomeBody(/*constraints: constraints*/)
                    : const SavedGamed(),
                index == 0
                    ? DelayedDisplay(
                        delay: const Duration(milliseconds: 1500),
                        slidingCurve: Curves.linear,
                        slidingBeginOffset: const Offset(0, 0),
                        child: GameDetailsDisplay(constraints: constraints))
                    : const SizedBox()
              ],
            );
          });
        },
      ),
    );
  }
}
