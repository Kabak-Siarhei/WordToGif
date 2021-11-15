import 'package:shared_preferences/shared_preferences.dart';

const String stateKey = "state";

class SharedPrefs {
  Future<bool> getSharedBool({required String key}) =>
      SharedPreferences.getInstance()
          .then((value) => value.getBool(stateKey) ?? false);

  Future<int> getSharedInt({required String key}) =>
      SharedPreferences.getInstance().then((value) => value.getInt(key) ?? 0);

  Future<String> getSharedString({required String key}) =>
      SharedPreferences.getInstance()
          .then((value) => value.getString(key) ?? '');

  void setSharedBool({required String key, required bool val}) =>
      SharedPreferences.getInstance().then((value) => value.setBool(key, val));

  void setSharedInt({required String key, required int val}) =>
      SharedPreferences.getInstance().then((value) => value.setInt(key, val));

  void setSharedString({required String key, required String val}) =>
      SharedPreferences.getInstance()
          .then((value) => value.setString(key, val));
}
