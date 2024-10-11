import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    // brightness: Brightness.light,
    primaryColor: Colors.red,
    scaffoldBackgroundColor: Colors.white,
    actionIconTheme: ActionIconThemeData(
      backButtonIconBuilder: (context) {
        return Icon(Icons.arrow_back_ios, color: Colors.white); // Custom back button icon
      },
      closeButtonIconBuilder: (context) {
        return Icon(Icons.close, color: Colors.white); // Custom close button icon
      },
      drawerButtonIconBuilder: (context) {
        return Icon(Icons.menu, color: Colors.white); // Custom drawer button icon
      },
      endDrawerButtonIconBuilder: (context) {
        return Icon(Icons.more_vert, color: Colors.white); // Custom end drawer button icon
      },
    ),

    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(color: Colors.black87, fontSize: 16),
      ),
      hintStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(color: Colors.black54, fontSize: 16),
      ),
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      shape: WidgetStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      overlayColor: MaterialStateProperty.all<Color>(Colors.grey.shade200),
    ),



    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.red,
      titleTextStyle: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Roboto',
        fontSize:22,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ) ,
      titleMedium:  TextStyle(
        fontFamily: 'Roboto',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleSmall:  TextStyle(
        fontFamily: 'Roboto',
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
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
    primaryColor: Colors.black87,
    scaffoldBackgroundColor: Colors.black54,
    actionIconTheme: ActionIconThemeData(

      backButtonIconBuilder: (context) {
        return Icon(Icons.arrow_back, color: Colors.white); // Custom back button icon for dark theme
      },
      closeButtonIconBuilder: (context) {
        return Icon(Icons.close, color: Colors.white); // Custom close button icon for dark theme
      },
      drawerButtonIconBuilder: (context) {
        return Icon(Icons.menu, color: Colors.white); // Custom drawer button icon for dark theme
      },
      endDrawerButtonIconBuilder: (context) {
        return Icon(Icons.more_vert, color: Colors.white); // Custom end drawer button icon for dark theme
      },
    ),

    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all<Color>(Colors.black38),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(color: Colors.white, fontSize: 16),
      ),
      hintStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(color: Colors.white70, fontSize: 16),
      ),
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      shape: WidgetStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      overlayColor: MaterialStateProperty.all<Color>(Colors.grey.shade800),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black87,
      titleTextStyle: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Roboto',
        fontSize:22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ) ,
      titleMedium:  TextStyle(
        fontFamily: 'Roboto',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white70,
      ),
      titleSmall:  TextStyle(
        fontFamily: 'Roboto',
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white70,
      ),
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
