import 'package:flutter/material.dart';
import 'package:food_reunion_app/constants.dart';
import 'package:food_reunion_app/size_config.dart';
import 'package:food_reunion_app/src/commons.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: kPrimaryColor,
          onPressed: press,
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: kWhite,
            ),
          )),
    );
  }
}