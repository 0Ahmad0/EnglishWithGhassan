import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        child: GetBuilder(
          init: ConnectController(),
          builder: (controller) => Column(
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    connectText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: primaryColor,
                        fontFamily: 'SohoPro-Light'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              WConnect(
                color: Color(0xff25D366).withOpacity(.5),
                text: '+962788472332',
                onTap: () {
                  controller.contactSoshial(controller.whatsapp);
                },
                nameIMG: images[0],
              ),
              WConnect(
                color: Color(0xff3b5998).withOpacity(.5),
                text: 'غسان نكدلي',
                onTap: () {
                  controller.contactSoshial(controller.facebook);
                },
                nameIMG: images[1],
              ),
              WConnect(
                color: Color(0xfffd0100).withOpacity(.5),
                text: 'English With Ghassan',
                onTap: () {
                  //TODO
                  controller.contactSoshial(controller.youtube);
                },
                nameIMG: images[2],
              ),
              WConnect(
                color: Color(0xfff09433).withOpacity(.5),
                text: 'English_With_Ghassan',
                onTap: () {
                  controller.contactSoshial(controller.instagram);
                },
                nameIMG: images[3],
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    controller.contactSoshial(controller.telegram);
                  },
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                      width: double.infinity,
                      color: Color(0xff0088cc).withOpacity(.5),
                      child: Row(
                        children: [
                          Expanded(
                              child: SvgPicture.asset(
                            images[4],
                            color: Color(0xff0088cc),
                                width: getScreenSize(context).width * 0.08,
                          )),
                          Expanded(child: Text('t.me/Ghassan_Nakdali'))
                        ],
                      )),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                  },
                  child: Container(
                      padding: EdgeInsets.all(20.0),
                      width: double.infinity,
                      color: Color(0xff01b2f8).withOpacity(.5),
                      child: Row(
                        children: [
                          Expanded(
                              child: SvgPicture.asset(
                            images[5],
                            color: Color(0xff01b2f8),
                                width: getScreenSize(context).width * 0.08,
                              )),
                          Expanded(child: Text('English With Ghassan'))
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
