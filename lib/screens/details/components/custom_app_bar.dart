import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_reunion_app/components/icon_rounded_btn.dart';
import 'package:food_reunion_app/size_config.dart';
import 'package:food_reunion_app/src/commons.dart';

class CustomAppBar extends PreferredSize {
  final double rating;
  CustomAppBar(this.rating);

  @override
  // AppBar().preferred.height provide us the height that way on our app bar
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconBtn(
              iconData: Icons.arrow_back_ios,
              press: () => Navigator.pop(context),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5),
                  SvgPicture.asset("assets/icons/Star Icon.svg")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}