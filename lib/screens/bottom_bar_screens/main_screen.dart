import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghssanapp/controller/app_controller.dart';
import 'package:ghssanapp/widgets/vedio_from_youtube.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: AppController(),
        builder: (controller) => ListView.builder(
            itemCount: controller.models.length,
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
