import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_youtube_downloader/flutter_youtube_downloader.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayScreen extends StatelessWidget {
  final String id;
  VideoPlayScreen({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: YoutubePlayer(
            showVideoProgressIndicator: false,
            controller: YoutubePlayerController(
                initialVideoId:id,
                flags: YoutubePlayerFlags(
                  mute: false,
                  loop: true,
                )
            ),
          ),
        ),
      ),
    );
  }
}