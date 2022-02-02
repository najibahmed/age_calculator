import 'package:age_calculator/pages/homepage.dart';
import 'package:age_calculator/pages/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constant/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: primaryColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Age Calculator",
    theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.light(
          primary: Colors.green, // header background color
          onPrimary: textColor, // header text color
          onSurface: textColor, // body text color
        ),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(primary: Colors.red))),
    home: HomePage(),
  ));
}
