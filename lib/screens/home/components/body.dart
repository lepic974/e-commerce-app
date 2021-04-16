import 'package:flutter/material.dart';
import 'package:food_reunion_app/screens/home/components/categories.dart';
import 'package:food_reunion_app/screens/home/components/discount_banner.dart';
import 'package:food_reunion_app/screens/home/components/home_header.dart';
import 'package:food_reunion_app/screens/home/components/popular_products.dart';
import 'package:food_reunion_app/screens/home/components/special_offer.dart';
import 'package:food_reunion_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(10)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(10)),
            Categories(),
            //SizedBox(height: getProportionateScreenHeight(30)),
            SpecialOffer(),
            SizedBox(height: getProportionateScreenHeight(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
