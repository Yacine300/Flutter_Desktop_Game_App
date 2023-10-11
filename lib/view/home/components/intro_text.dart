import 'package:flutter/material.dart';

class IntroText extends StatelessWidget {
  const IntroText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome Back, many new games waiting to be played",
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
