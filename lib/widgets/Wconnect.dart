import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WConnect extends StatelessWidget {
  final Function onTap;
  final String nameIMG;
  final Color color;
  final String text;

  const WConnect({
    Key key,
    this.onTap,
    this.nameIMG,
    this.color = Colors.red,
    this.text = 'hello',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
            padding:  EdgeInsets.all(20.0),
            width: double.infinity,
            color: color,
            child: Row(
              children: [
                Expanded(child: SvgPicture.asset(nameIMG)),
                Expanded(child: Text(text))
              ],
            )),
      ),
    );
  }
}
