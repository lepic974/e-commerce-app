import 'package:flutter/material.dart';
import 'package:food_reunion_app/constants.dart';
import 'package:food_reunion_app/src/commons.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kWhite,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primarySwatch: kRed,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: kWhite,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: kBlack),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Color(0xFF888888),
        fontSize: 18,
      ),
    ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 42,
      vertical: 20,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
  );
}
