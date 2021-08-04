import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:login2_api_coaching/helpers/settings.dart';
import 'package:login2_api_coaching/helpers/spHelper.dart';
import 'package:login2_api_coaching/ui/auth/models/login_response.dart';
import 'package:login2_api_coaching/ui/auth/models/signup_model.dart';
import 'package:login2_api_coaching/ui/auth/models/signup_response.dart';
import 'package:login2_api_coaching/ui/profile/models/profile_response.dart';

class ProfileApi {
  ProfileApi._();
  static ProfileApi profileApi = ProfileApi._();
  Future<ProfileResponse> getProfile() async {
    try {
      Response response = await Settings.settings.dio.get('profile');

      if (response.statusCode < 400) {
        ProfileResponse profileResponse =
            ProfileResponse.fromJson(response.data);

        return profileResponse;
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
}
