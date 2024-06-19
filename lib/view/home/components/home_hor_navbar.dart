import 'package:flutter/material.dart';
import 'package:game_app/view/resources/icon_manager.dart';

import '../../../model/data_service.dart';
import '../home_view.dart';

class VerticalNavBarItems extends StatelessWidget {
  const VerticalNavBarItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 125,
          child: ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ValueListenableBuilder(
                      valueListenable: currentPage,
                      builder: (context, value, child) {
                        return Container(
                          height: 20,
                          width: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: value == index
                                ? Colors.orange
                                : Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                color: value == index
                                    ? Colors.orangeAccent.withOpacity(.6)
                                    : Colors.transparent,
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: const Offset(
                                    0, 0), // changes position of shadow
                              ),
                              BoxShadow(
                                color: value == index
                                    ? Colors.orangeAccent.withOpacity(.6)
                                    : Colors.transparent,
                                spreadRadius: 5,
                                blurRadius: 20,
                                offset: const Offset(0, 0),
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
                          navBarIcons[index].keys.first,
                          size: IconSize.large,
                          color: value == index
                              ? Colors.orange
                              : Colors.white.withOpacity(0.6),
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                  ValueListenableBuilder(
                      valueListenable: currentPage,
                      builder: (context, val, child) {
                        return Text(
                          navBarIcons[index]
                              .values
                              .first, // Title for each icon
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: val == index
                                  ? Colors.orange
                                  : Colors.white.withOpacity(.6)),
                        );
                      }),
                  const Spacer()
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
