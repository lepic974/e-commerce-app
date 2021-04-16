import 'package:flutter/material.dart';
import 'package:food_reunion_app/size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key key,
    @required this.iconData,
    @required this.press,
  }) : super(key: key);
  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    var kWhite;
    return SizedBox(
      height: getProportionateScreenHeight(48),
      width: getProportionateScreenWidth(48),
      child: FlatButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: kWhite,
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}