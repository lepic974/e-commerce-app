import 'package:flutter/material.dart';
import 'package:food_reunion_app/screens/loading/Logo.dart';

class LoadingScreen extends StatelessWidget {
  static String routeName = "/loading";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading Page"),
      ),
      body: Logo(),
    );
  }
}