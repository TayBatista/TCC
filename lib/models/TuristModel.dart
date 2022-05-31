// ignore_for_file: file_names

class TuristModel {
  TuristModel(
      {required this.cityId,
      required this.id,
      required this.curiosity,
      required this.image,
      required this.title,
      required this.description,
      required this.place,
      required this.price});

  final int cityId;
  final int id;
  final String curiosity;
  final String image;
  final String title;
  final String description;
  final String place;
  final double price;
}
