import 'package:shared_preferences/shared_preferences.dart';

const String themeKey = "themeKey";

class SharedPrefs {
  final pref = SharedPreferences.getInstance();

  Future<bool> getSharedBool({required String key}) =>
      pref.then((value) => value.getBool(key) ?? false);

  Future<int> getSharedInt({required String key}) =>
      pref.then((value) => value.getInt(key) ?? 0);

  Future<String> getSharedString({required String key}) =>
      pref.then((value) => value.getString(key) ?? '');

  void setSharedBool({required String key, required bool val}) =>
      pref.then((value) => value.setBool(key, val));

  void setSharedInt({required String key, required int val}) =>
      pref.then((value) => value.setInt(key, val));

  void setSharedString({required String key, required String val}) =>
      pref.then((value) => value.setString(key, val));
}
