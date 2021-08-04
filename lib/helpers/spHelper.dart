import 'package:shared_preferences/shared_preferences.dart';

class SpHelper {
  SpHelper._();
  static SpHelper spHelper = SpHelper._();
  SharedPreferences sharedPreferences;
  initSp() async {
    this.sharedPreferences = await SharedPreferences.getInstance();
  }

  setUser(String token) async {
    sharedPreferences.setString('token', token);
  }

  String getUserToken() {
    String token = sharedPreferences.getString('token');
    return token;
  }

  clearToken() {
    sharedPreferences.remove('token');
  }
}
