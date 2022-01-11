
import 'package:get/get.dart';
import 'package:ghssanapp/screens/bottom_bar_screens/connect_screen.dart';
import 'package:ghssanapp/screens/bottom_bar_screens/main_screen.dart';
import 'package:ghssanapp/screens/bottom_bar_screens/rankings_screen.dart';

class AppController extends GetxController {
  List<Map<String, Object>> pages;
  int selectedPageIndex = 1;

  void selectPage(int index) {
    selectedPageIndex = index;
    update();
  }
  @override
  void onInit() {
    pages = [
      {
        'page': RankingsScreen(),
      },
      {
        'page': MainScreen(),
      },
      {
        'page': ConnectScreen(),
      },
    ];
    super.onInit();
  }
}
