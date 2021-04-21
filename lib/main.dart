import 'package:flutter/material.dart';
import 'package:food_reunion_app/routes.dart';
import 'package:food_reunion_app/screens/loading/loading_screen.dart';
import 'package:food_reunion_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food 974 App',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: LoadingScreen.routeName,
      //initialRoute: ProfileScreen.routeName,
      routes: routes,
    );
  }
}
