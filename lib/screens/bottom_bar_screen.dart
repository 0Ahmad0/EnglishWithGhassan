import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghssanapp/const.dart';
import 'package:ghssanapp/controller/app_controller.dart';
import 'package:ghssanapp/screens/about_screen.dart';

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: AppController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(icon: Icon(Icons.ac_unit), onPressed: (){
            })
          ],
          leading: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: (){
              Get.to(()=>AboutScreen());
            },
            child: Image(
              image: AssetImage('assets/images/setting.png'),
            ),
          ),
          title: Image.asset('assets/images/qoba.png'),
          centerTitle: true,
        ),
        body: controller.pages[controller.selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: controller.selectedPageIndex,
          selectedItemColor: primaryColor,
          unselectedItemColor: colorGray,
          onTap: controller.selectPage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.segment),
              label: 'تصنيفات'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'الرئيسية'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.laptop_chromebook_sharp),
              label: 'دروس خاصة'
            ),
          ],
        )
      ),
    );
  }
}