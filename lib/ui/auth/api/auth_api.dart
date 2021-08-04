import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:login2_api_coaching/helpers/settings.dart';
import 'package:login2_api_coaching/helpers/spHelper.dart';
import 'package:login2_api_coaching/ui/auth/models/login_response.dart';
import 'package:login2_api_coaching/ui/auth/models/signup_model.dart';
import 'package:login2_api_coaching/ui/auth/models/signup_response.dart';

class AuthApi {
  AuthApi._();
  static AuthApi authApi = AuthApi._();
  Future<LoginResponse> login(String email, String password) async {
    try {
      Response response = await Settings.settings.dio.post('login', data: {
        'email': email,
        'password': password,
        'fcm_token': 'fcm_tokenfcm_token',
        'device_type': 'android'
      });
      // print(response.data);
      if (response.statusCode < 400) {
        LoginResponse loginResponse = LoginResponse.fromJson(response.data);
        SpHelper.spHelper.setUser(loginResponse.data.accessToken);
        return loginResponse;
      } else {
        print(response.data);
      }
    } on Exception catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<SignUpResponse> register(SignupModel signupModel) async {
    try {
      Response response = await Settings.settings.dio
          .post('https://dashboard.giftyonline.ae/api/v1/signup', data: {
        'email': 'shadyahmed233@gmail.com',
        'password': '12345336',
        'phone': '+966210001194',
        'first_name': 'test',
        'last_name': 'user',
        'fcm_token': 'fcm_tokenfcm_token',
        'device_type': 'android'
      });

      if (response.statusCode < 300) {
        return SignUpResponse.fromJson(json.decode(response.data));
      } else {
        print(response.data);
      }
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  resetPassword() async {}
  logOut() {
    SpHelper.spHelper.clearToken();
  }
}
