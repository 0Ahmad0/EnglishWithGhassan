
import 'package:get/get.dart';
import 'package:ghssanapp/models/category.dart';
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
    super.onInit();
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
  }

  List<ModelApp> models = [
    ModelApp(
      image: 'assets/images/4.png',
      min_type: 'استخدام Either or; neither nor',
      description: 'اعرف الفرق بينهما لتتحدث الإنجليزية بشكل صحيح '
          'شرح مبسط وسهل مع المتميز أ.غسان نكدلي',
      date: '6 آذار 2020',
      link: 'hello',
      category: 'hello',
    ), ModelApp(
      image: 'assets/images/logo.png',
      min_type: 'استخدام Either or; neither nor',
      description: 'اعرف الفرق بينهما لتتحدث الإنجليزية بشكل صحيح '
          'شرح مبسط وسهل مع المتميز أ.غسان نكدلي',
      date: '6 آذار 2020',
      link: 'https://www.youtube.com/watch?v=3gU1OLKBcys',
      category: 'hello',
    ),

    ModelApp(
      image: 'assets/images/4.png',
      min_type: 'استخدام Either or; neither nor',
      description: 'اعرف الفرق بينهما لتتحدث الإنجليزية بشكل صحيح '
          'شرح مبسط وسهل مع المتميز أ.غسان نكدلي',
      date: '6 آذار 2020',
      link: 'hello',
      category: 'hello',
    ),
    ModelApp(
      image: 'assets/images/4.png',
      min_type: 'استخدام Either or; neither nor',
      description: 'اعرف الفرق بينهما لتتحدث الإنجليزية بشكل صحيح '
          'شرح مبسط وسهل مع المتميز أ.غسان نكدلي',
      date: '6 آذار 2020',
      link: 'hello',
      category: 'hello',
    ),
  ];

}

