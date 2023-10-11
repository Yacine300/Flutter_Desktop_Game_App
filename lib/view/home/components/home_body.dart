import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:game_app/view/home/components/app_bar.dart';
import 'package:game_app/view/home/components/game_trailer.dart';

import 'package:game_app/view/home/components/tile_action.dart';

import '../../../model/data_service.dart';
import '../../resources/value_manager.dart';
import '../home_view.dart';
import 'game_list_tile.dart';
import 'intro_text.dart';
import 'one_game.dart';
import 'one_game_category.dart';

final ScrollController _controller = ScrollController();

void _scrollToItem(int index) {
  // Calculate the scroll position based on item height and index
  const double itemWidth =
      120.0; // You should adjust this value based on your item size.
  final double scrollPosition = index * itemWidth;

  // Scroll to the calculated position
  _controller.animateTo(
    scrollPosition,
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOut,
  );
}

class HomeBody extends StatefulWidget {
  final BoxConstraints constraints;
  const HomeBody({
    required this.constraints,
    super.key,
  });

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: PaddingManager.p20, vertical: PaddingManager.p12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HomeAppBar(),
            const IntroText(),
            const SizedBox(
              height: 30,
            ),
            const GameListTitle(),
            const SizedBox(
              height: PaddingManager.p12,
            ),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                  controller: _controller,
                  itemCount: gamesCategory.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return DelayedDisplay(
                      delay: Duration(milliseconds: index * 600),
                      slidingCurve: Curves.ease,
                      slidingBeginOffset: const Offset(0, 0),
                      child: ValueListenableBuilder(
                        valueListenable: currentSelectedCategory,
                        builder: ((context, value, child) {
                          return GestureDetector(
                            onTap: () => setState(() {
                              currentSelectedCategory.value = index;
                              _scrollToItem(currentSelectedCategory.value);
                            }),
                            child: OneGameCategory(
                              height: index == value ? 150 : 113,
                              width: index == value ? 250 : 150,
                              index: index,
                            ),
                          );
                        }),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: PaddingManager.p14,
            ),
            const TitleAction(
              title: "Last Played",
            ),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ListView.builder(
                  itemCount: dummyGames.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return DelayedDisplay(
                      delay: Duration(milliseconds: index * 400),
                      slidingCurve: Curves.ease,
                      slidingBeginOffset: const Offset(-5, 0),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: MarginManager.m12),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          dummyGames[index].imageAsset))),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dummyGames[index].name,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                Text(
                                  "Level .151",
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: PaddingManager.p20,
            ),
            const SizedBox(
              height: PaddingManager.p20,
            ),
            const TitleAction(title: "Action Games"),
            SizedBox(
              height: 145,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dummyGames.length,
                  itemBuilder: (context, index) {
                    return DelayedDisplay(
                      delay: Duration(milliseconds: index * 200),
                      slidingCurve: Curves.ease,
                      slidingBeginOffset: const Offset(5, 0),
                      child: GestureDetector(
                        onTap: () => setState(() {
                          controller.pause();
                          currentSelectedGame.value = index;
                        }),
                        child: OneGame(index: index),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
