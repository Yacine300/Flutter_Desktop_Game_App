import 'dart:ui';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:game_app/view/home/components/app_bar.dart';
import 'package:game_app/view/home/components/game_trailer.dart';

import 'package:game_app/view/home/components/tile_action.dart';

import '../../../model/data_service.dart';
import '../../resources/value_manager.dart';
import '../home_view.dart';

import 'one_game.dart';

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
  //final BoxConstraints constraints;
  const HomeBody({
    //required this.constraints,
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
            horizontal: 50, vertical: PaddingManager.p12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //const GameListTitle(),
              /* const SizedBox(
                height: PaddingManager.p12,
              ),*/
              //////////////
              //HomeHeader(),

              /* const SizedBox(
                height: PaddingManager.p14,
              ),*/
              /*SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
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
                                height: index == value ? 200 : 125,
                                width: index == value ? 300 : 200,
                                index: index,
                              ),
                            );
                          }),
                        ),
                      );
                    }),
              ),*/
              const Pub(),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 3,
                    width: 200,
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Container(
                            width: index == 1 ? 40 : 3,
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            decoration: BoxDecoration(
                              color: Colors
                                  .black, // Background color of the container
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                index == 1
                                    ? BoxShadow(
                                        color: Colors.orange
                                            .withOpacity(0.6), // Neon color
                                        spreadRadius: 2,
                                        blurRadius: 10,
                                        offset: const Offset(
                                            0, 0), // changes position of shadow
                                      )
                                    : const BoxShadow(),
                                index == 1
                                    ? BoxShadow(
                                        color: Colors.orange.withOpacity(
                                            0.4), // Additional glow effect
                                        spreadRadius: 5,
                                        blurRadius: 20,
                                        offset: const Offset(0, 0),
                                      )
                                    : const BoxShadow(),
                              ],
                            ),
                            child: Center(
                              child: Container(
                                height: double
                                    .infinity, // Make sure the inner container is properly sized
                                decoration: BoxDecoration(
                                  color: index == 1
                                      ? Colors.orange
                                      : Colors.white30, // Inner container color
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
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
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Text(
                                    "Level .151",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall,
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
                height: 200,
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
                            controller.player.pause();
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
      ),
    );
  }
}

class Pub extends StatelessWidget {
  const Pub({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const HomeAppBar(),
          //const IntroText(),
          const SizedBox(
            height: 30,
          ),
          LayoutBuilder(builder: (context, constraints) {
            return SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 300,
                        width: constraints.maxWidth * 0.7,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://i.pinimg.com/564x/0f/d2/e5/0fd2e59d1658404058dcaa91f5ee350a.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const Positioned(top: 10, left: 20, child: PubCat()),
                      Positioned(
                        bottom: 10,
                        left: 20,
                        child: Row(
                          children: [
                            const Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://i.pinimg.com/564x/fe/22/57/fe2257132fae9844eac0d6041289fc6b.jpg"),
                                  ),
                                ),
                                Positioned(
                                  right: -15,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://i.pinimg.com/564x/21/cb/0d/21cb0dca1d61c9f76e4136f732684ba6.jpg"),
                                  ),
                                ),
                                Positioned(
                                  right: -25,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://i.pinimg.com/236x/28/e3/e8/28e3e8bdaf05ba1d3655b28f428a78e4.jpg"),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white12,
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 20, sigmaY: 20),
                                      child: Container(
                                        color: Colors.black.withOpacity(0.3),
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "12 friends",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 205,
                        width: constraints.maxWidth * 0.25,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Stack(
                            children: <Widget>[
                              Image.network(
                                "https://i.pinimg.com/564x/39/5b/4e/395b4ed3974acc3d5cb636e1e1c02157.jpg",
                                fit: BoxFit.cover,
                                height: 180,
                                width: 200,
                              ),
                              Positioned.fill(
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                                  child: Container(
                                    color: Colors.black.withOpacity(0),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 20,
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Stray",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Lost , alone and separated from family , a stary cat must unfagle an ancient mistery to escape a long forgotten cybercity and find home",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      const Spacer(),
                                      const Text(
                                        "\$ 16.99 USD",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 35,
                                            width: 100,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.black87
                                                    .withOpacity(0.3)),
                                            child: const Text(
                                              "Avaible Now",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.window_sharp,
                                            color: Colors.white,
                                          )
                                        ],
                                      )
                                    ]),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 80,
                            width: constraints.maxWidth * 0.12,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 2.5, vertical: 2.5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://i.pinimg.com/564x/a5/da/67/a5da67fb37aeaf62fe3366433bc405af.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            height: 80,
                            width: constraints.maxWidth * 0.12,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 2.5, vertical: 2.5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://i.pinimg.com/736x/33/58/e6/3358e6201bc760a9719b7c4b21e6f895.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}

class PubCat extends StatelessWidget {
  const PubCat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white12,
                  ),
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                      alignment: Alignment.center,
                      child: const Text(
                        "Cats",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white12,
                  ),
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                      alignment: Alignment.center,
                      child: const Text(
                        "Adventure",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white12,
                  ),
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                      alignment: Alignment.center,
                      child: const Text(
                        "Cyber Punk",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white12,
                  ),
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                        color: Colors.black.withOpacity(0.3),
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white70,
                        )),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: PageView.builder(
        itemCount: 2, // Number of items in your list
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                Container(
                  height: 300,
                  width: 500,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/theLastOfUs.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 2.5, vertical: 2.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/theLastOfUs.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 200,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 2.5, vertical: 2.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/theLastOfUs.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class BlurContainer extends StatelessWidget {
  final double height;
  final double width;
  final int radius;
  final Widget child;
  const BlurContainer({
    required this.height,
    required this.radius,
    required this.width,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withOpacity(0.05),
          ),
        ),
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white.withOpacity(0.01),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
