import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghssanapp/controller/app_controller.dart';
import 'package:ghssanapp/widgets/vedio_from_youtube.dart';
import 'package:http/http.dart' as http;
class DetailesScreen extends StatelessWidget {
  final String title;
  var decodedData;

   DetailesScreen({Key key, this.title}) : super(key: key);
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
  Map listVesieosCategory;
  @override
  Widget build(BuildContext context) {
    listVesieosCategory = decodedData;
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
        ),
        body: FutureBuilder(
          future: getApi(),
          builder: (context,snapshot){
            if(!snapshot.hasData){
              // print(decodedData);
              return Center(
                  child: CircularProgressIndicator()
              );
            }else{
              return ListView.builder(
                  itemCount: decodedData.length,
                  //TODO : THis up line need to List For Category Lists From Herouko MazenSh
                  itemBuilder: (context, index) {
                    // print(decodedData);
                    String url = decodedData[index]['link'];
                    String id = url.substring(url.length -11);
                    return decodedData[index]['category'] == title
                        ?
                    WVedioFromYoutube(
                      image: 'https://img.youtube.com/vi/${id}/0.jpg',
                      min_type: decodedData[index]['min_type'],
                      date: decodedData[index]['category'],
                      category: decodedData[index]['category'],
                      description: decodedData[index]['description'],
                      link: '${DateTime.tryParse(decodedData[index]['date']).year}/'
                          '${DateTime.tryParse(decodedData[index]['date']).month}/'
                          '${DateTime.tryParse(decodedData[index]['date']).day} || '
                          '${DateTime.tryParse(decodedData[index]['date']).hour}:'
                          '${DateTime.tryParse(decodedData[index]['date']).minute}',
                    ):SizedBox();
                  });
            }
          },
        )
    );
  }
}
