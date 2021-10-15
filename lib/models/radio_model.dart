import 'dart:convert';

// typedef OnRadioClickCallback = void Function(String radioUri);
class RadioModel {
  final String name;
  final String genre;
  final String imageUrl;
  final String uri;


  RadioModel({this.name, this.genre, this.imageUrl, this.uri});

  factory RadioModel.fromJson(dynamic json) {
    return RadioModel(
      name: json['name'] as String,
      genre: json['genre'] as String,
      imageUrl: json['image_url'] as String,
      uri: json['uri'] as String,
    );
  }

  static List<RadioModel> radioFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return RadioModel.fromJson(data);
    }).toList();
  }

  @override
  String toString(){
    return 'RadioModel {name: $name, genre: $genre, image_url: $imageUrl, uri: $uri}';
  }

}
