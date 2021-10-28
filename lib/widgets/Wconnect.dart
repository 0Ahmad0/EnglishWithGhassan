import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WConnect extends StatelessWidget {
  final Function onTap;
  final String nameIMG;

  const WConnect({
    Key key,
    this.onTap,
    this.nameIMG,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Image.asset(nameIMG),
      ),
    );
  }
}
