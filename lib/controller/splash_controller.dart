import 'dart:async';

import 'package:get/get.dart';
import 'package:ghssanapp/screens/bottom_bar_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 3), () => Get.off(BottomBarScreen()));
  }
}