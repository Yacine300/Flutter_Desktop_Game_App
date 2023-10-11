import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';
import '../../resources/value_manager.dart';

import 'home_hor_navbar.dart';

class HomeVerticalNavBar extends StatelessWidget {
  const HomeVerticalNavBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      padding: const EdgeInsets.symmetric(vertical: PaddingManager.p14),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(50),
          color: Theme.of(context).primaryColorDark),
      child: const Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: ColorManager.darkerPrimary,
            backgroundImage: AssetImage("assets/icons/loogo.gif"),
          ),
          Spacer(),
          VerticalNavBarItems(),
          Spacer(),
        ],
      ),
    );
  }
}
