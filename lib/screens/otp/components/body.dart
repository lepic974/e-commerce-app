import 'package:flutter/material.dart';
import 'package:food_reunion_app/constants.dart';
import 'package:food_reunion_app/screens/otp/components/otp_form.dart';
import 'package:food_reunion_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              Text(
                "\nWe sent your code to +33 (0)6 24 84 05 04",
                textAlign: TextAlign.center,
              ),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
              //SizedBox(height: SizeConfig.screenHeight * 0.05),
              // CompleteProfileForm(),
              // SizedBox(height: getProportionateScreenHeight(30)),
              // Text(
              //   "By contuining your comfirm that you agree \nwith our Terms & Condtions.",
              //   textAlign: TextAlign.center,
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "This code will expired in ",
          //textAlign: TextAlign.center,
        ),
        TweenAnimationBuilder(
          tween: Tween(
            begin: 30,
            end: 0,
          ),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
        Text(
          " seconds.",
          //textAlign: TextAlign.center,
        ),
      ],
    );
  }
}