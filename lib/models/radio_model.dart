import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

class RadioModel {
  final String name;
  final String genre;
  final String country;
  final String imageUrl;
  final String uri;
  bool? isFavourite;


  RadioModel({required this.name,
              required this.genre,
              required this.country,
              required this.imageUrl,
              required this.uri,
              this.isFavourite});

  Map toJson() => {
    'name': name,
    'genre': genre,
    'country' : country,
    'imageUrl': imageUrl,
    'uri': uri,
    'isFavourite': isFavourite,
  };

  factory RadioModel.fromJson(dynamic json) {
    return RadioModel(
      name: json['name'] as String,
      genre: json['genre'] as String,
      country: json['country'] as String,
      imageUrl: json['imageUrl'] as String,
      uri: json['uri'] as String,
      isFavourite: json['isFavourite'] as bool?,
    );
  }

  @override
  String toString() {
    return "{${this.name}, ${this.genre}, ${this.country}, ${this.imageUrl}, ${this.uri}. ${this.isFavourite}";
  }

  // factory RadioModel.fromJson(Map<String, dynamic> json) => _$RadioModelFromJson(json);
  //     Map<String, dynamic> toJson() => _$RadioModelToJson(this); // pub run build_runner build

}
