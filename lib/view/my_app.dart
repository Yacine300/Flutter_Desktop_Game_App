import 'package:flutter/material.dart';
import 'package:game_app/view/home/home_view.dart';
import 'package:game_app/view/resources/routes.dart';

import 'resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key); // default constructor

  MyApp._internal(); // named constructor

  int appState = 0;

  static final MyApp _instance =
      MyApp._internal(); //singloton or single instance

  factory MyApp() => _instance; // factory of the single instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: buildDarkTheme(),
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: Home.routeName,
    );
  }
}
