import 'package:flutter/cupertino.dart';

import '../../../model/data_service.dart';

class PlayGame extends StatelessWidget {
  const PlayGame({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      height: 400,
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(dummyGames[index].imageAsset), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
