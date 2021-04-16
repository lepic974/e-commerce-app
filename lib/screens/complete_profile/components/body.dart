import 'package:flutter/material.dart';
import 'package:food_reunion_app/constants.dart';
import 'package:food_reunion_app/screens/complete_profile/components/complete_profile_form.dart';
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
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \nwith socialmedia.",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30)),
              Text(
                "By contuining your comfirm that you agree \nwith our Terms & Condtions.",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
