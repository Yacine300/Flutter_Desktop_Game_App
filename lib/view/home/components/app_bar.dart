import 'package:flutter/cupertino.dart';

import 'appBar_menu.dart';
import 'hi_text.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [HiText(), AppBarMenu()],
    );
  }
}
