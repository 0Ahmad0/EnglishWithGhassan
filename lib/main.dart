import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghssanapp/const.dart';
import 'package:ghssanapp/screens/bottom_bar_screen.dart';
import 'package:ghssanapp/screens/bottom_bar_screens/connect_screen.dart';
import 'package:ghssanapp/screens/bottom_bar_screens/main_screen.dart';
import 'package:ghssanapp/screens/bottom_bar_screens/rankings_screen.dart';
import 'package:ghssanapp/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'English with Ghassan',
      theme: ThemeData(
        primaryColor: primaryColor,
        splashColor: primaryColor,
        fontFamily: 'SohoPro-Light'
      ),
      home:SplashScreen()
    );
  }
}

