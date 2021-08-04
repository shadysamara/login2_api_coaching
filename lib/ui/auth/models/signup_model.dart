import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

class SignupModel {
  String email;
  String password;
  String phone;
  String first_name;
  String last_name;
  String fcm_token;
  String device_type;
  SignupModel({
    @required this.email,
    @required this.password,
    @required this.phone,
    @required this.first_name,
    @required this.last_name,
    @required this.fcm_token,
  }) {
    this.device_type = Platform.isAndroid ? 'Android' : 'Ios';
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'phone': phone,
      'first_name': first_name,
      'last_name': last_name,
      'fcm_token': fcm_token,
      'device_type': device_type,
    };
  }
}
