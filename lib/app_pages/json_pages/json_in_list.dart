import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// import 'dart:';
class PersonData {
  String firstName;
  String lastName;
  String gender;
  // String address;
  int age;
  // List<PhoneNumber> phoneNumber;

  PersonData({
    required this.firstName,
    required this.lastName,
    required this.gender,
    // required this.address,
    required this.age,
    // required this.phoneNumber,
  });

  factory PersonData.fromJson(Map<String, dynamic> json) {
    // var addressJson = json['address'] as Map;
    // var addressMap= addressJson.map((key, value) => Address.fromJson(json));
    // var phoneNumberJson = json['phoneNumber'] as List;
    // List<PhoneNumber> phoneJson =
    //     phoneNumberJson.map((e) => PhoneNumber.fromJson(e)).toList();
    return PersonData(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      gender: json['gender'] as String,
      // address: json['address'] as String,
      age: json['age'] as int,
      // phoneNumber: phoneJson,
    );
  }
}

class Address {
  String streetAddress;
  String city;
  String state;

  Address({
    required this.city,
    required this.state,
    required this.streetAddress,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      city: json['city'] as String,
      state: json['state'] as String,
      streetAddress: json['streetAddress'] as String,
    );
  }
}

Future<PersonData> getPersonData() async {
  const uri = 'https://filesamples.com/samples/code/json/sample2.json';
  final response = await http.get(Uri.parse(uri));
  if (response.statusCode == 200) {
    // debugPrint(response.body);

    return PersonData.fromJson(json.decode(response.body));
  } else {
    throw Exception(response.reasonPhrase);

  }
}

class PhoneNumber {
  String type;
  int number;

  PhoneNumber({required this.number, required this.type});

  factory PhoneNumber.fromJson(Map<String, dynamic> json) {
    return PhoneNumber(number: json['number'], type: json['type']);
  }
}
