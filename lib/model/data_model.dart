class DataModel {
  const DataModel(
      {required this.name,
      required this.img,
      required this.price,
      required this.people,
      required this.description,
      required this.location,
      required this.stars});

  final String name;
  final String img;
  final int price;
  final int people;
  final int stars;
  final String description;
  final String location;

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      name: json["name"],
      img: json["img"],
      price: json["price"],
      people: json["people"],
      description: json["description"],
      location: json["location"],
      stars: json["stars"],
    );
  }
}
