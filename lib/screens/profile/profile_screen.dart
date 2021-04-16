import 'package:flutter/material.dart';
import 'package:food_reunion_app/components/custom_bottom_nav_bar.dart';
import 'package:food_reunion_app/enum.dart';
import 'package:food_reunion_app/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}