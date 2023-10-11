import 'package:flutter/material.dart';

import '../../resources/icon_manager.dart';

class AppBarMenu extends StatelessWidget {
  const AppBarMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            (Icons.search),
            color: IconManager.darkModeColor,
            size: IconSize.large,
          ),
          Icon((Icons.notifications),
              color: IconManager.darkModeColor, size: IconSize.large),
          /* CircleAvatar(
            radius: 15,
            backgroundColor: Colors.transparent,
            backgroundImage: Netw(
                "https://i.pinimg.com/564x/ed/53/ff/ed53ffbe4dcfea4c2df35736156ea3e7.jpg"),
          )*/
        ],
      ),
    );
  }
}
