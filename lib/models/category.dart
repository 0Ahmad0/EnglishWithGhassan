import 'package:flutter/cupertino.dart';



class ModelApp {
  String image;
  String min_type;
  String description;
  String date;
  String link;
  String category;

  ModelApp({
    @required this.image,
    @required this.min_type,
    @required this.description,
    @required this.date,
    @required this.link,
    @required this.category,
  });
  ModelApp.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    min_type = json['min_type'];
    description = json['description'];
    date = json['date'];
    link = json['link'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['min_type'] = this.min_type;
    data['description'] = this.description;
    data['date'] = this.date;
    data['link'] = this.link;
    data['category'] = this.category;
    return data;
  }
}
