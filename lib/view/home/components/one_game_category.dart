import 'package:flutter/material.dart';

import '../../../model/data_service.dart';
import '../../resources/icon_manager.dart';
import '../../resources/value_manager.dart';
import '../home_view.dart';

class OneGameCategory extends StatelessWidget {
  final double height, width;
  final int index;
  const OneGameCategory({
    required this.height,
    required this.width,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color color = gamesCategory[index].entries.first.value;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeIn,
          height: height,
          width: width,
          margin: const EdgeInsets.symmetric(horizontal: MarginManager.m12),
          padding: const EdgeInsets.symmetric(
              horizontal: PaddingManager.p12, vertical: PaddingManager.p12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                right: height / 20,
                bottom: 0,
                child: CircleAvatar(
                  radius: height / 7,
                  backgroundColor: color.withGreen(1).withOpacity(0.08),
                ),
              ),
              Positioned(
                  left: width / 20,
                  top: 0,
                  child: CircleAvatar(
                      radius: height / 3,
                      backgroundColor: color.withGreen(1).withOpacity(0.06))),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Spacer(),
                Icon(
                  Icons.play_circle_rounded,
                  color: IconManager.darkModeColor,
                  size: height * 0.3,
                ),
                const Spacer(),
                Text(gamesCategory[index]['Category'],
                    style: currentSelectedCategory == index
                        ? const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12)
                        : const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12)),
                const Text("12.000 Playing",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Colors.white))
              ]),
            ],
          ),
        ),
        Positioned(
          top: 15,
          right: 15,
          child: Transform.rotate(
            angle: 0.2618,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeIn,
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  currentSelectedCategory.value == index
                      ? BoxShadow(
                          color: Colors.black.withOpacity(0.4), // Shadow color
                          offset:
                              const Offset(0, 2), // Offset of the shadow (x, y)
                          blurRadius: 40.0, // Blur radius
                          spreadRadius: 40.0, // Spread radius
                        )
                      : BoxShadow(
                          color: Colors.black.withOpacity(0.1), // Shadow color
                          offset:
                              const Offset(0, 2), // Offset of the shadow (x, y)
                          blurRadius: 20.0, // Blur radius
                          spreadRadius: 2.0, // Spread radius
                        ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -50,
          right: -40,
          child: Transform.rotate(
            angle: 0.2618,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeIn,
              height: height,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(gamesCategory[index].keys.first),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 35,
          right: 0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeIn,
            height: height * 0.6,
            width: width * 0.6,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(gamesCategory[index]['second']),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
