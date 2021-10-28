import 'dart:convert';

import 'package:ghssanapp/models/category.dart';
import 'package:http/http.dart';

class Api {
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";

  Future<List<ModelApp>> getPosts() async {
    Response res = await get(postsURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<ModelApp> posts = body
          .map(
            (dynamic item) => ModelApp.fromJson(item),
      )
          .toList();

      return posts;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}