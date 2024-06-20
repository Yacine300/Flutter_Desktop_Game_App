import 'dart:ui';

import 'package:flutter/material.dart';

import 'home_hor_navbar.dart';

class HomeVerticalNavBar extends StatelessWidget {
  const HomeVerticalNavBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: <Widget>[
          Container(
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.03),
                  Colors.white.withOpacity(0.05),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                color: Colors.black.withOpacity(0.01),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Spacer(flex: 1),
                    /*CircleAvatar(
                      radius: 22,
                      backgroundColor: ColorManager.darkerPrimary,
                      backgroundImage: AssetImage("assets/images/logo.jpg"),
                    ),*/
                    const Text(
                      "App Logo",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const VerticalNavBarItems(),
                    const Spacer(
                      flex: 2,
                    ),
                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ValueListenableBuilder(
                            valueListenable: currentPage,
                            builder: (context, value, child) {
                              return Container(
                                height: 20,
                                width: 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: value == 4
                                      ? Colors.orange
                                      : Colors.transparent,
                                  boxShadow: [
                                    BoxShadow(
                                      color: value == 4
                                          ? Colors.orangeAccent.withOpacity(.6)
                                          : Colors.transparent,
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(
                                          0, 0), // changes position of shadow
                                    ),
                                    BoxShadow(
                                      color: value == 4
                                          ? Colors.orangeAccent.withOpacity(.6)
                                          : Colors.transparent,
                                      spreadRadius: 5,
                                      blurRadius: 20,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                              );
                            }),

                        IconButton(
                          onPressed: () {},
                          icon: ValueListenableBuilder(
                            valueListenable: currentPage,
                            builder: (ctx, value, child) {
                              return Icon(
                                navBarIcons[4],
                                size: IconSize.large,
                                color: value == 4
                                    ? Colors.orange
                                    : Colors.white.withOpacity(0.6),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                            width:
                                5), // Add some space between the icon and the title
                        Text(
                          'contact', // Title for each icon
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(.6)),
                        ),
                        SizedBox(
                            width:
                                10), // Add some space between the title and the bar
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ValueListenableBuilder(
                            valueListenable: currentPage,
                            builder: (context, value, child) {
                              return Container(
                                height: 20,
                                width: 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: value == 5
                                      ? Colors.orange
                                      : Colors.transparent,
                                  boxShadow: [
                                    BoxShadow(
                                      color: value == 5
                                          ? Colors.orangeAccent.withOpacity(.6)
                                          : Colors.transparent,
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(
                                          0, 0), // changes position of shadow
                                    ),
                                    BoxShadow(
                                      color: value == 5
                                          ? Colors.orangeAccent.withOpacity(.6)
                                          : Colors.transparent,
                                      spreadRadius: 5,
                                      blurRadius: 20,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                ),
                              );
                            }),

                        IconButton(
                          onPressed: () {},
                          icon: ValueListenableBuilder(
                            valueListenable: currentPage,
                            builder: (ctx, value, child) {
                              return Icon(
                                navBarIcons[5],
                                size: IconSize.large,
                                color: value == 5
                                    ? Colors.orange
                                    : Colors.white.withOpacity(0.6),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                            width:
                                5), // Add some space between the icon and the title
                        Text(
                          'notifications', // Title for each icon
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(.6)),
                        ),
                        SizedBox(
                            width:
                                5), // Add some space between the title and the bar
                      ],
                    ),*/
                    const Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(
                                  0.1), // Adjust the opacity as needed
                            ),
                          ),
                          Positioned.fill(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                  sigmaX: 25.0, sigmaY: 25.0), // Apply blur
                              child: Container(
                                color: Colors.black.withOpacity(
                                    0.1), // Adjust opacity to ensure visibility
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: const Row(
                                  children: [
                                    SizedBox(
                                      width: 80,
                                      child: Text(
                                        "Friend chats and friends",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: Colors.white70,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*Column(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: ColorManager.darkerPrimary,
                      backgroundImage: AssetImage("assets/images/logo.jpg"),
                    ),
                    Spacer(),
                    VerticalNavBarItems(),
                    Spacer(),
                  ],
                ),*/