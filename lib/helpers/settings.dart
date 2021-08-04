import 'package:dio/dio.dart';
import 'package:login2_api_coaching/helpers/spHelper.dart';

class Settings {
  Settings._();
  static Settings settings = Settings._();
  final String baseurl = 'https://dashboard.giftyonline.ae/api/v1/';
  Dio dio;
  initDio() {
    dio = Dio();
    dio.options.baseUrl = baseurl;
    dio.options.headers = getHeaders();

    // dio = Dio()..options.baseUrl = baseurl;
  }

  Map<String, dynamic> getHeaders() {
    String token = SpHelper.spHelper.getUserToken();
    Map<String, dynamic> headers = token == null
        ? {'Content-Type': 'application/json'}
        : {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token'
          };
    return headers;
  }
}
