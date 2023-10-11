import 'package:flutter/material.dart';

import '../../resources/icon_manager.dart';

class TitleAction extends StatelessWidget {
  final String title;
  const TitleAction({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            child: Row(children: [
              IconButton(
                onPressed: () {
                  // _scrollToItem(currentSelectedCategory.value - 1);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Theme.of(context).primaryColor,
                  size: IconSize.small,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {
                  //  _scrollToItem(currentSelectedCategory.value + 1);
                },
                icon: Icon(
                  Icons.arrow_forward,
                  color: Theme.of(context).primaryColor,
                  size: IconSize.small,
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
