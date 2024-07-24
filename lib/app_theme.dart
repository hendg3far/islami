import 'package:flutter/material.dart';

class AppTheme {

  static final Color primaryLightColor = Color(0xFFB7935F);
  static final Color whiteColor = Color(0xFFFFFFFF);
  static final Color darkColor = Color(0xFF242424);

  static final ThemeData lightTheme = ThemeData(

    primaryColor: primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: darkColor,
      )
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryLightColor,
      selectedItemColor: darkColor,
      unselectedItemColor: whiteColor,
    ),

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 30,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 25,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 25,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData();

}