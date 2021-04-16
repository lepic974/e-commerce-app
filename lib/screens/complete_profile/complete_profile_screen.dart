import 'package:flutter/material.dart';
import 'package:food_reunion_app/screens/complete_profile/components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete-profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
