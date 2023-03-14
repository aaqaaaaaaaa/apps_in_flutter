import 'package:apps_in_flutter/app_pages/json_pages/home_page.dart';
import 'package:apps_in_flutter/home.dart';
import 'package:apps_in_flutter/styles/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Apps',
      themeMode: ThemeMode.system,
      theme: MyTheme.darkTheme,
      // theme: MyTheme.lightTheme,
      home: const MyHomePage(),
    );
  }
}
