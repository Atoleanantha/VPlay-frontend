import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      titleTextStyle: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        color: Colors.black87,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.grey,
      titleTextStyle: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        color: Colors.white70,
      ),
    ),
  );
}
