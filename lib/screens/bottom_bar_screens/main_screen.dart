import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghssanapp/controller/app_controller.dart';
import 'package:ghssanapp/widgets/vedio_from_youtube.dart';
import 'package:http/http.dart' as http;


class MainScreen extends StatelessWidget {
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
      body: FutureBuilder(
          future: getApi(),
          builder: (context,snapshot){
            if(!snapshot.hasData){
              // print(decodedData);
              return Center(
                child: CircularProgressIndicator(),
              );
            }else{
              return  GetBuilder(
                init: AppController(),
                builder: (controller) => ListView.builder(
                    itemCount: decodedData.length,
                    itemBuilder: (context, index) {
                      String url = decodedData[index]['link'];
                      String id = url.substring(url.length -11);
                      // YoutubePlayerController _controller = YoutubePlayerController(
                      //   initialVideoId: id,
                      //   flags: YoutubePlayerFlags(
                      //     autoPlay: true,
                      //   ),
                      // );
                      // print(_controller.metadata.title);
                      // print(decodedData.length);
                      return WVedioFromYoutube(
                        image: 'https://img.youtube.com/vi/${id}/0.jpg',
                        min_type: decodedData[index]['min_type'],
                        date: 'minute',
                        category: decodedData[index]['category'],
                        description: decodedData[index]['description'],
                        link: '${DateTime.tryParse(decodedData[index]['date']).year}/'
                            '${DateTime.tryParse(decodedData[index]['date']).month}/'
                            '${DateTime.tryParse(decodedData[index]['date']).day} || '
                            '${DateTime.tryParse(decodedData[index]['date']).hour}:'
                            '${DateTime.tryParse(decodedData[index]['date']).minute}',
                      );
                    }
                ),
              );
            }
          }
      ),
    );
  }
}
