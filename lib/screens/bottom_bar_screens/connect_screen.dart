import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghssanapp/controller/connect_controller.dart';
import 'package:ghssanapp/widgets/Wconnect.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../const.dart';

class ConnectScreen extends StatelessWidget {
  const ConnectScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
            left: 10.0,
            right: 10.0,
            bottom: 30.0,
          ),
          child: GetBuilder(
            init: ConnectController(),
            builder: (controller) => Column(
              children: [
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    connectText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: primaryColor,
                        fontFamily: 'SohoPro-Light'),
                  ),
                ),
                WConnect(
                  onTap: () {
                    controller.contactSoshial(controller.whatsapp);
                  },
                  nameIMG: images[0],
                ),
                WConnect(
                  onTap: () {
                    controller.contactSoshial(controller.facebook);
                  },
                  nameIMG: images[1],
                ),
                WConnect(
                  onTap: () {
                    //TODO
                    controller.contactSoshial(controller.youtube);
                  },
                  nameIMG: images[2],
                ),
                WConnect(
                  onTap: () {
                    controller.contactSoshial(controller.instagram);
                  },
                  nameIMG: images[3],
                ),
                WConnect(
                  onTap: () {
                    controller.contactSoshial(controller.telegram);
                  },
                  nameIMG: images[4],
                ),
                WConnect(
                  onTap: () {
                    launch("tel://+962796102920");

                  },
                  nameIMG: images[5],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
