import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghssanapp/const.dart';
import 'package:ghssanapp/screens/details.dart';
import 'package:http/http.dart' as http;

class RankingsScreen extends StatelessWidget {
  var decodedData;

  Future<void> getApi() async {
    var url = Uri.parse('https://english-with-ghassan.herokuapp.com/all');
    http.Response response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        String data = response.body;
        decodedData = jsonDecode(data);
        return decodedData;
      } else {
        return 'failed';
      }
    } catch (e) {
      return 'failed';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
        itemCount: wordsCategories.length + 1,
        itemBuilder: (context, index) {
          return index == 0
              ? Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 10.0,
                    right: 10.0,
                    bottom: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'تصنيفات الدروس',
                        style: TextStyle(color: Color(0xff456613)),
                      ),
                      Text(
                        'Video categories',
                        style: TextStyle(color: Color(0xff456613)),
                      ),
                    ],
                  ),
                )
              : Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.12), blurRadius: 1.2)
                  ]),
                  child: ListTile(
                    onTap: () {
                      Get.to(() => DetailesScreen(
                            title: wordsCategories[index - 1]['subtitle'],
                          ));
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff456613),
                    ),
                    leading: Text(
                      wordsCategories[index - 1]['name'],
                      style: TextStyle(color: primaryColor),
                    ),
                    title: Center(
                      child: Text(
                        wordsCategories[index - 1]['subtitle'],
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                  ),
                );
        },
      ),
    ));
  }
}
