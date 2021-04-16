import 'package:flutter/material.dart';
import 'package:food_reunion_app/screens/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign-in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Sign In"),
    );
  }
}
