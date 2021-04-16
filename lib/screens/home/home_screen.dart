import 'package:flutter/material.dart';
import 'package:food_reunion_app/components/custom_bottom_nav_bar.dart';
import 'package:food_reunion_app/enum.dart';
import 'package:food_reunion_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
