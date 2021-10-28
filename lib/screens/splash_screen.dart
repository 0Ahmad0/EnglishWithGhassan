import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghssanapp/const.dart';
import 'package:ghssanapp/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashController(),
        builder: (ctx)=> Scaffold(
          backgroundColor: primaryColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width:getScreenSize(context).width *0.6,
                height: getScreenSize(context).width *0.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: colorGray,
                        width: 1.5
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/logo.png'
                        )
                    )
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
              Row()
            ],
          ),
        ),
    );
  }
}
