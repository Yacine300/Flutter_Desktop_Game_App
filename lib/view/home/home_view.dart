import 'package:flutter/material.dart';

import 'package:game_app/view/resources/value_manager.dart';

import 'components/home_core_body.dart';
import 'components/home_ver_navbar.dart';

ValueNotifier<int> currentSelectedCategory = ValueNotifier(0);
ValueNotifier<int> currentSelectedGame = ValueNotifier(0);
ValueNotifier<int> currentPage = ValueNotifier(0);

class Home extends StatefulWidget {
  static const routeName = "/home";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MarginManager.m12, vertical: MarginManager.m12),
        child: Row(
          children: [
            HomeVerticalNavBar(),
            HomeBodyCore(),
          ],
        ),
      ),
    );
  }
}
