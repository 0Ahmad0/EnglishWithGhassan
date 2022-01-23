import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghssanapp/screens/video_play_screen.dart';

import '../const.dart';

class WVedioFromYoutube extends StatelessWidget {
  final String image;
  final String min_type;
  final String date;
  final String category;
  final String description;
  final String link;

  const WVedioFromYoutube({
    Key key,
    @required this.image,
    @required this.min_type,
    @required this.date,
    @required this.category,
    @required this.description,
    @required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: (){
  Get.to(()=>VideoPlayScreen(id: image.substring(27,38)));
    },
      child: Container(
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.12),
              blurRadius: 10.0,
            )
          ],
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: getScreenSize(context).width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(image),
                    ),
                  ),
                ),
                Center(child: Text(min_type,style: TextStyle(height: 2.2),)),
                Row(
                  children: [
                    Text(
                      '',
                      style: TextStyle(color: Colors.red,height: 2),
                    ),
                    Text(
                      category,
                      style: TextStyle(color: colorGray),
                    )
                  ],
                ),
                Text(description,style: TextStyle(height: 1.5),),
                Text(
                  link,
                  style: TextStyle(color: Colors.red,height: 2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
