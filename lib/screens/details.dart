import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghssanapp/const.dart';
import 'package:ghssanapp/controller/app_controller.dart';
import 'package:ghssanapp/widgets/vedio_from_youtube.dart';

class DetailesScreen extends StatelessWidget {
  final String title;
  final List listVesieosCategory;

  const DetailesScreen({Key key, this.title, this.listVesieosCategory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,

      ),
      body: GetBuilder(
        init: AppController(),
        builder: (controller) => ListView.builder(
            itemCount: controller.models.length,
            //TODO : THis up line need to List For Category Lists From Herouko MazenSh
            itemBuilder: (context, index) => WVedioFromYoutube(
              image: controller.models[index].image,
              min_type: controller.models[index].min_type,
              date: controller.models[index].min_type,
              category: controller.models[index].category,
              description: controller.models[index].description,
              link: controller.models[index].link,
            )),
      ),
    );
  }
}
