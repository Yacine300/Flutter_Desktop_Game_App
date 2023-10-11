import 'package:flutter/material.dart';

import 'game_model.dart';

List<Game> dummyGames = [
  Game(
      name: "The Last Of Us",
      logo: "assets/images/last.png",
      descreption:
          "The Last of Us is a post-apocalyptic video game where Joel, a survivor, escorts Ellie, an immune teenager, to a group called the Fireflies. They believe Ellie could lead to a cure for a fungal infection thats turned most people into hostile creatures. Their journey is fraught with dangers, including hostile humans and infected creatures.",
      id: DateTime.now().toIso8601String(),
      imageAsset: "assets/images/theLastOfUs.jpg",
      trailerUrl:
          "https://v1.pinimg.com/videos/720p/27/2f/55/272f5536f391d3efde20d60c1c50ef91.mp4"),
  Game(
      name: "Assasin Creed mirage",
      logo: "assets/images/assasin.png",
      descreption:
          "Assassin's Creed Mirage is an upcoming action-adventure game developed by Ubisoft Bordeaux and published by Ubisoft. The game will be the thirteenth major installment in the Assassin's Creed series and the successor to 2020's Assassin's Creed Valhalla.",
      id: DateTime.now().toIso8601String(),
      imageAsset: "assets/images/mirage.jpg",
      trailerUrl:
          "https://v1.pinimg.com/videos/mc/720p/94/34/f1/9434f1256836aa339e78fc701b53f9ec.mp4"),
  Game(
      name: "God of War Ragnarök",
      logo: "assets/images/god.png",
      descreption:
          "The former Greek god of war, and his son Atreus as they navigate the world of Norse mythology. The game's story revolves around the impending catastrophe of Ragnarok, the end of the world in Norse mythology, and Kratos and Atreus' journey to prevent it while dealing with new challenges, gods, and creatures from Norse folklore. ",
      id: DateTime.now().toIso8601String(),
      imageAsset: "assets/images/Ragnarök.jpg",
      trailerUrl:
          "https://v1.pinimg.com/videos/mc/720p/a0/14/56/a01456fca31e0d35ca92c66289769256.mp4"),
];

List<Map<String, dynamic>> gamesCategory = [
  {
    "assets/images/sword.png": Colors.deepOrangeAccent,
    "second": "assets/images/jum.png",
    "Category": "Action",
  },
  {
    "assets/images/soccer.png": const Color.fromARGB(255, 61, 211, 139),
    "second": "assets/images/dumbels.png",
    "Category": "Sport",
  },
  {
    "assets/images/chess.png": const Color.fromARGB(255, 1, 154, 174),
    "second": "assets/images/cup.png",
    "Category": "Reflexion",
  },
  {
    "assets/images/rocket.png": Colors.purple,
    "second": "assets/images/earth.png",
    "Category": "Adventure",
  },
];

List<IconData> navBarIcons = [
  Icons.home_rounded,
  Icons.bookmark_rounded,
];
