import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ghssanapp/controller/connect_controller.dart';
import 'package:ghssanapp/widgets/WButtonabout.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

import '../const.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key key}) : super(key: key);
  void contactSoshial(url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        universalLinksOnly: true,
      );
    } else {
      Get.snackbar('There was a problem Are You have This APP?', url);
      throw 'There was a problem to open the url: $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('حول التطبيق'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15.0,
              ),
              Text(
                'أهلاً بك',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Color(0xff006AFF)),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: colorGray, width: 1.5)),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WButttonAbout(
                        onTap: () {
                          Get.dialog(
                            Center(
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Container(
                                  width: double.infinity,
                                  height: getScreenSize(context).height / 1.8,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 25.0),
                                  padding: const EdgeInsets.all(15.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width:
                                            getScreenSize(context).width * 0.3,
                                        height:
                                            getScreenSize(context).width * 0.3,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(),
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/logo.png'))),
                                      ),
                                      GetBuilder(
                                        init: ConnectController(),
                                        builder: (controller) =>
                                            GestureDetector(
                                          onTap: () {
                                            controller.contactSoshial(
                                                'https://t.me/Englishwithghassan');
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                              FontAwesomeIcons.telegram,
                                                color: primaryColor,
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Material(
                                                  color: Colors.transparent,
                                                  child: Text(
                                                    'تابعنا على تلغرام',
                                                    style: TextStyle(
                                                      color: primaryColor,
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      Material(
                                          color: Colors.transparent,
                                          child: Text(
                                            aboutApp,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(height: 1.8),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: primaryColor,
                                            ),
                                            onPressed: () {
                                              Get.back();
                                              Share.share(
                                                  'https://Link on Google Play ... Soon');
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text('شارك التطبيق'),
                                                Icon(Icons.share)
                                              ],
                                            )),
                                      ),
                                      Material(
                                          color: Colors.transparent,
                                          child: Text('مطور التطبيق')),
                                      TextButton(
                                        onPressed: (){
                                          contactSoshial('https://t.me/Ahmad_Alhariri');
                                        },
                                        child: Text(
                                          'Ahmed Alhariri',
                                          style: TextStyle(
                                              fontFamily: 'Shoco-pro',
                                              color: primaryColor),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        text: 'لمحة عن التطبيق',
                        size: size,
                      ),
                      WButttonAbout(
                        onTap: () {
                          Get.dialog(
                            Center(
                              child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: Container(
                                  width: double.infinity,
                                  height: getScreenSize(context).height / 2.5,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 25.0),
                                  padding: const EdgeInsets.all(15.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Material(
                                          color: Colors.transparent,
                                          //ToDo: This Section change text an email
                                          child: Text(
                                            'إذا كنت تواجه أي مشكلة أو لديك اقتراحات \n'
                                            'يرجى التواصل معنا على البريد الالكتروني m.nakadli12@gmail.com \n أو الرقم:\n'
                                                '+962 7 8847 2332',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(height: 1.8),
                                          )),
                                      GetBuilder(
                                        init: ConnectController(),
                                        builder: (controller) => Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: primaryColor,
                                              ),
                                              onPressed: () {
                                                Get.back();
                                                controller.contactSoshial(
                                                    //ToDo: change emailHereMazenSh  to email connect them
                                                    'mailto:ahmadalhariri2001@gmail.com?subject=Sample Subject&body=اكتب المشكلة هنا');
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text('إبلاغ عن مشكلة'),
                                                  Icon(Icons.email)
                                                ],
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        text: 'آرائكم واستفساراتكم',
                        size: size,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
