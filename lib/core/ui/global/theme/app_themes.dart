import 'package:flutter/material.dart';
import 'package:vybrnt_mvp/core/ui/global/theme/style.dart';

enum AppTheme {
  greenLight,
  greenDark,
  blueLight,
  blueDark,
  purpleLight,
}

final appThemeData = {
  AppTheme.greenLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
    appBarTheme:
        const AppBarTheme(textTheme: TextTheme(headline1: appBarTextStyle)),
    textTheme: const TextTheme(
        subtitle1: subtitle1TextStyle, bodyText1: body1TextStyle),
  ),
  AppTheme.greenDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[700],
    appBarTheme:
        const AppBarTheme(textTheme: TextTheme(headline1: appBarTextStyle)),
    textTheme: const TextTheme(
        subtitle1: subtitle1TextStyle, bodyText1: body1TextStyle),
  ),
  AppTheme.blueLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    appBarTheme:
        const AppBarTheme(textTheme: TextTheme(headline1: appBarTextStyle)),
    textTheme: const TextTheme(
        headline1: headline1TextStyle,
        subtitle1: subtitle1TextStyle,
        bodyText1: body1TextStyle,
        bodyText2: body2TextStyle),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: TextButton.styleFrom(
      backgroundColor: const Color(0xFFA4528A),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
    )),
  ),
  AppTheme.purpleLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFFA4528A),
    appBarTheme:
        const AppBarTheme(textTheme: TextTheme(headline1: appBarTextStyle)),
    textTheme: const TextTheme(
        headline1: headline1TextStyle,
        subtitle1: subtitle1TextStyle,
        bodyText1: body1TextStyle,
        bodyText2: body2TextStyle),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(30.0))),
      fillColor: Colors.black12,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: TextButton.styleFrom(
      backgroundColor: const Color(0xFFA4528A),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
    )),
  ),
  AppTheme.blueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
    appBarTheme:
        const AppBarTheme(textTheme: TextTheme(headline1: appBarTextStyle)),
    textTheme: const TextTheme(
        subtitle1: subtitle1TextStyle, bodyText1: body1TextStyle),
  ),
};
