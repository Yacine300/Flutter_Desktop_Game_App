import 'package:flutter/cupertino.dart';
import 'package:game_app/view/home/components/tile_action.dart';

class GameListTitle extends StatefulWidget {
  const GameListTitle({
    super.key,
  });

  @override
  State<GameListTitle> createState() => _GameListTitleState();
}

class _GameListTitleState extends State<GameListTitle> {
  @override
  Widget build(BuildContext context) {
    return const TitleAction(
      title: "Games",
    );
  }
}
