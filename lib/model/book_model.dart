class BookModel {
  int? id;
  String title;
  String author;
  String description;
  String image;

  BookModel({
    this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.image,
  });

  factory BookModel.fromJson(Map<String, dynamic> mapa) => BookModel(
        id: mapa["id"],
        title: mapa["title"],
        author: mapa["author"],
        description: mapa["description"],
        image: mapa["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "author": author,
        "description": description,
        "image": image,
      };
}
