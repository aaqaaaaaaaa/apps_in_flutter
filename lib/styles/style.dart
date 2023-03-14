import 'package:flutter/material.dart';

class MyTheme {
  static final darkTheme = ThemeData(
      colorScheme: const ColorScheme.dark(),
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.grey.shade900,
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.black87,
          colorScheme: ColorScheme.light(),

        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30)
      ));
  static final lightTheme = ThemeData(

      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(),
      buttonTheme: const ButtonThemeData(buttonColor: Colors.white24));
}

 ButtonStyle buttonsStyle=ButtonStyle(
textStyle:  MaterialStateProperty.all(const TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
   padding:MaterialStateProperty.all( const EdgeInsets.symmetric(vertical: 20)),
  backgroundColor: MaterialStateProperty.all(Colors.grey.shade800),
   minimumSize: MaterialStateProperty.all(const Size.fromHeight(50)),
);