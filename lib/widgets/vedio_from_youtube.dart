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
  Get.to(()=>VideoPlayScreen(id: description));
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
                //ToDO: This Section Need To Package flutter_youtube_vedio wrap down Continer i need Api MazenSh to Do It
                Container(
                  width: double.infinity,
                  height: getScreenSize(context).width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                    ),
                  ),
                ),
                Center(child: Text(min_type)),
                Row(
                  children: [
                    Text(
                      date,
                      style: TextStyle(color: Colors.red),
                    ),
                    Text(
                      ' || ' + category,
                      style: TextStyle(color: colorGray),
                    )
                  ],
                ),
                Text(description),
                Text(
                  category,
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
