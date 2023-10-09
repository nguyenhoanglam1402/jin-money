import 'package:shared_preferences/shared_preferences.dart';

class SharePreferenceUtil {
  final Future<SharedPreferences> _sharePreference =
      SharedPreferences.getInstance();

  ///**Set data to Share Preference.**
  ///
  ///*This data will be set to RAM and save into disk of the device*
  /// - [key] typeof [String] is key of value in share preference
  /// - [value] type of [dynamic] is value of data.
  /// - Return typeof [bool] to confirm saving process is done
  ///The function will consider type of value to save data with type corresponding method
  Future<bool> setData(String key, dynamic value) async {
    final SharedPreferences preferences = await _sharePreference;
    bool isDone = false;
    if (value is int) {
      isDone = await preferences.setInt(key, value);
    } else if (value is bool) {
      isDone = await preferences.setBool(key, value);
    } else if (value is double) {
      isDone = await preferences.setDouble(key, value);
    } else {
      isDone = await preferences.setString(key, value);
    }
    return isDone;
  }

  ///**Get value depend on type expectation**
  ///
  ///- [key] typeof [String] key of value
  ///- Return [T] type as expectation
  Future<T> getData<T>(String key) async {
    final preference = await _sharePreference;
    if(T is int) {
      return preference.getInt(key) as T;
    } else if(T is bool) {
      return preference.getBool(key) as T;
    } else if(T is double) {
      return preference.getDouble(key) as T;
    } else {
      return preference.getString(key) as T;
    }
  }
}
