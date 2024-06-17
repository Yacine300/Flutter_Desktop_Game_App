class Game {
  String id;
  String imageAsset, logo;
  String trailerUrl;
  String name;
  String bigImage;
  String descreption;

  Game(
      {required this.name,
      required this.logo,
      required this.descreption,
      required this.id,
      required this.bigImage,
      required this.imageAsset,
      required this.trailerUrl});
}
