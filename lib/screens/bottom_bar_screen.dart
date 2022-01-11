import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ghssanapp/const.dart';
import 'package:ghssanapp/controller/app_controller.dart';
import 'package:ghssanapp/screens/about_screen.dart';

class BottomBarScreen extends StatelessWidget {
  const BottomBarScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  GetBuilder(
      init: AppController(),
      builder: (controller) => Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            leading: GestureDetector(
              onTap: (){
                Get.to(()=>AboutScreen());
              },
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: SvgPicture.asset(
                  'assets/images/sit.svg',
                  color: Colors.white,
                ),
              ),
            ),
            title: SvgPicture.asset(
              'assets/images/qouba.svg',
              color: Colors.white,
              width: 28,
              height: 28,
            ),
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