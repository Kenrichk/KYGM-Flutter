import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Client {
  final String firstName;
  final String middleName;
  final String lastName;
  final int age;
  final DateTime dob;
  final String address;
  final String city;
  final String state;
  final String alias;
  final String description;
  final String work;
  final int zip;
  final int ssid;
  final int phoneNumber;
  final int timeInUSA;
  final Image idPhoto;
  final Image passportPhoto;
  final Image birthCertPhoto;
//multiple pictures
  Client({
    @required this.firstName,
    this.middleName,
    @required this.lastName,
    @required this.age,
    @required this.dob,
    @required this.address,
    @required this.city,
    @required this.state,
    @required this.zip,
    this.ssid,
    @required this.work,
    @required this.description,
    @required this.timeInUSA,
    @required this.phoneNumber,
    this.idPhoto,
    this.passportPhoto,
    this.birthCertPhoto,
    this.alias,
  });
}
