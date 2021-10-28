import 'package:flutter/material.dart';

import '../const.dart';

class WButttonAbout extends StatelessWidget {
  final Size size;
  final String text;
  final Function onTap;

  const WButttonAbout({Key key, this.size, this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        alignment: AlignmentDirectional.center,
        height: size.width *0.12,
        decoration: BoxDecoration(
          border: Border.all(
              color: colorGray,
              width: 1.5
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(100.0),
        ),child: Text(text,style: TextStyle(
          fontSize: 14, color: primaryColor
      ),),
      ),
    );
  }
}
