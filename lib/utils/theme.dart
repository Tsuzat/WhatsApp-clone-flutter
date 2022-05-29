import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData darkTheme() => ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(18, 27, 34, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(31, 44, 52, 1),
        ),
      );
}

class MyTextStyle {
  static TextStyle heading1() => const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(133, 150, 160, 1),
      );

    static TextStyle heading2() => const TextStyle(
        fontSize: 16,
        color: Color.fromRGBO(133, 150, 160, 1),
      );
}
