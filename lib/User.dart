import 'package:flutter/material.dart';

class User {
  dynamic firstName;
  int? phoneNumber;
  var pass;
  var email;
  var lastName;

  User(
      {dynamic firstName,
      int? phoneNumber,
      var pass,
      var email,
      var lastName}) {
    this.firstName = firstName;
    this.email = email;
    this.lastName = lastName;
    this.pass = pass;
    this.phoneNumber = phoneNumber;
  }
}
