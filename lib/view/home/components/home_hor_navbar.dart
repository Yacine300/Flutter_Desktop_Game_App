import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../model/data_service.dart';
import '../home_view.dart';

class VerticalNavBarItems extends StatelessWidget {
  const VerticalNavBarItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: navBarIcons.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return IconButton(
            onPressed: () {},
            icon: ValueListenableBuilder(
              valueListenable: currentPage,
              builder: (ctx, value, child) {
                return Icon(
                  navBarIcons[index],
                  color: value == index
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.primary.withOpacity(0.3),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
