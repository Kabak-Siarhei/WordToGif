import 'package:shared_preferences/shared_preferences.dart';

const String stateKey = "state";

class SharedPrefs {
  static SharedPreferences? _preferences;

  factory SharedPrefs() => SharedPrefs._();

  SharedPrefs._();

  loadingInitState() async {
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
      print(_preferences);
    }
  }

  bool get getBoolStateTheme => _preferences?.getBool(stateKey) ?? false;

  set setBoolStateTheme(bool value) {
    _preferences?.setBool(stateKey, value);
  }
}

