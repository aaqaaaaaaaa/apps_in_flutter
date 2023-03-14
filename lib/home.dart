import 'package:apps_in_flutter/app_pages/cached_image/cachedImage.dart';
import 'package:apps_in_flutter/app_pages/json_pages/home_page.dart';
import 'package:apps_in_flutter/app_pages/local_json/home_page_local.dart';
import 'package:apps_in_flutter/app_pages/url/url_launcher.dart';
import 'package:apps_in_flutter/styles/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Apps'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        children: [
          const SizedBox(
            height: 20,
          ),
          button(title: 'Cached Image', toPage: const CachedImage()),
          const SizedBox(
            height: 20,
          ),
          button(title: 'Json', toPage: const JsonHomePage()),
          const SizedBox(
            height: 20,
          ),
          button(title: 'Json Local ', toPage: const LocalJsonHomePage()),
          const SizedBox(
            height: 20,
          ),
          button(title: 'Url Launcher', toPage: const UrlLaunchPage()),
        ],
      ),
    );
  }




  Widget button({required String title, required Widget toPage}) {
    return ElevatedButton(
        style: buttonsStyle,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => toPage,
              ));
        },
        child: Text(title));
  }
}
extention