import 'package:shared_preferences/shared_preferences.dart';

class Storage {

  static Future<bool> isLogged() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return (prefs.getBool('logged') == null ? false : prefs.getBool('logged'));
  }

  static setLogged() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('logged', true);
  }


  static Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  static setToken(token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  static setUser(user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('nome', user['name']);
  }

  static Future<String> getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('nome');
  }
}