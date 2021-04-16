import 'package:flutter/material.dart';
import 'package:food_reunion_app/screens/forgot_password/components/body.dart';
import 'package:food_reunion_app/src/commons.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot-password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgot Password",
          style: TextStyle(color: kBlack),
        ),
      ),
      body: Body(),
    );
  }
}
