class Game {
  String id;
  String imageAsset, logo;
  String trailerUrl;
  String name;
  String descreption;

  Game(
      {required this.name,
      required this.logo,
      required this.descreption,
      required this.id,
      required this.imageAsset,
      required this.trailerUrl});
}
