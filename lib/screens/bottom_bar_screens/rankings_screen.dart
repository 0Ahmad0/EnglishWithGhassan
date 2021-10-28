import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghssanapp/const.dart';
import 'package:ghssanapp/controller/app_controller.dart';
import 'package:ghssanapp/screens/details.dart';

class RankingsScreen extends StatelessWidget {
  const RankingsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          itemCount: wordsCategories.length + 1,
          itemBuilder: (context, index) {
            return index == 0
                ? Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 10.0,
                    right: 10.0,
                    bottom: 10.0,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'تصنيفات الدروس',
                          style: TextStyle(color: Colors.red),
                        ),
                        Text(
                          'Video categories',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                )
                : Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(.12),blurRadius: 1.2)
                    ]
                  ),
                  child: ListTile(
                    onTap: (){
                      Get.to(()=>DetailesScreen(
                        title: wordsCategories[index-1]['name'],
                        listVesieosCategory: [1,2,3,4,5,6,7,8,9,10],
                      ));
                    },
                      trailing: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.red,
                      ),
                      leading: Text(
                        wordsCategories[index - 1]['name'],
                        style: TextStyle(color: primaryColor),
                      ),
                      title: Center(
                        child: Text(
                          wordsCategories[index - 1]['subtitle'],
                          style: TextStyle(color: primaryColor),
                        ),
                      ),
                    ),
                );
          },
        ),
      ),
    );
  }
}
