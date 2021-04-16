import 'package:flutter/material.dart';
import 'package:food_reunion_app/size_config.dart';
import 'package:food_reunion_app/src/commons.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenHeight(20),
        vertical: getProportionateScreenWidth(15),
      ),
      width: double.infinity,
      //height: 90,
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          text: "A Summer Surprise\n",
          style: TextStyle(color: kWhite),
          children: [
            TextSpan(
              text: "Cashback 20%",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}