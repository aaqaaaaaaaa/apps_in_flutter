import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
//
// class Pep {
//   List<People> people;
//
//   Pep({required this.people});
//
//   factory Pep.fromJson(Map<String, dynamic> json) {
//     var jsonPeople = json['people'] as List;
//     List<People> allPeople = jsonPeople.map((e) => People.fromJson(e)).toList();
//     return Pep(
//       people: allPeople,
//     );
//   }
// }

class People {
  String firstName;
  String lastName;
  String gender;
  int age;
  String number;

  People({
    required this.firstName,
    required this.age,
    required this.gender,
    required this.lastName,
    required this.number,
  });

  factory People.fromJson(Map<String, dynamic> json) {
    return People(
      firstName: json['firstName'] as String,
      age: json['age'] as int,
      gender: json['gender'] as String,
      lastName: json['lastName'] as String,
      number: json['number'] as String,
    );
  }
}

// Future<Pep> getData() async {
//   String connection =
//       await rootBundle.loadString('assets/sample4.json');
//   final response = json.decode(connection);
//   return Pep.fromJson(response.body);
// }
