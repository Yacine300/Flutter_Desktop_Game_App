import 'package:flutter/material.dart';

class HiText extends StatelessWidget {
  const HiText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hi , Yacine",
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
