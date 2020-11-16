import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Client {
  final String firstName;
  final String midName;
  final String lastName;
  final int age;
  final DateTime dob;
  final String address;
  final String city;
  final String state;
  final int zip;
  final int ssid;
  final int phoneNum;
  final Image idPic;

  Client({
    @required this.firstName,
    @required this.midName,
    @required this.lastName,
    @required this.age,
    @required this.dob,
    @required this.address,
    @required this.city,
    @required this.state,
    @required this.zip,
    @required this.ssid,
    @required this.phoneNum,
    @required this.idPic,
  });
}
