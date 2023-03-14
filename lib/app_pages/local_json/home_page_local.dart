import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocalJsonHomePage extends StatefulWidget {
  const LocalJsonHomePage({Key? key}) : super(key: key);

  @override
  _LocalJsonHomePageState createState() => _LocalJsonHomePageState();
}

class _LocalJsonHomePageState extends State<LocalJsonHomePage> {
  List ppList = const [];

  Future loadPeople() async {
    String content = await rootBundle.loadString('assets/sample4.json');
    List collection = json.decode(content);
    setState(() {
      ppList = collection;
    });
  }

  @override
  void initState() {
    super.initState();
    loadPeople();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Local Json'),
      ),
      body: ListView.builder(
        itemCount: ppList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              '${ppList[index]['firstName']} ${ppList[index]['lastName']}',
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(ppList[index]['number']),
            trailing: Text(ppList[index]['gender']),
            leading: Text('${ppList[index]['age']}'),
          );
        },
      ),
    );
  }
}
