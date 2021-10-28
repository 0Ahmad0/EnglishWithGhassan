import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghssanapp/const.dart';
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
        primaryColor: primaryColor
      ),
      home: SplashScreen()
    );
  }
}