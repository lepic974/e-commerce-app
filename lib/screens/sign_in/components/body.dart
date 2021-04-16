import 'package:flutter/material.dart';
import 'package:food_reunion_app/components/no_account_text.dart';
import 'package:food_reunion_app/components/social_card.dart';
import 'package:food_reunion_app/screens/sign_in/components/sign_form.dart';
import 'package:food_reunion_app/size_config.dart';
import 'package:food_reunion_app/src/commons.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: kBlack,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password \nor continue with social network.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
