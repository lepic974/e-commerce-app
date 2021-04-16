import 'package:flutter/material.dart';
import 'package:food_reunion_app/screens/otp/components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP"),
      ),
      body: Body(),
    );
  }
}
