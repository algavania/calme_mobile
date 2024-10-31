
import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferencesService {
  static Future<SharedPreferences> get _instance async =>
      prefs ??= await SharedPreferences.getInstance();
  static SharedPreferences? prefs;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences> init() async {
    prefs = await _instance;
    return prefs ?? await SharedPreferences.getInstance();
  }

  static bool getIsFirstTime() {
    return prefs?.getBool('isFirstTime') ?? true;
  }

  static Future<void> setIsFirstTime({required bool value}) async {
    await prefs?.setBool('isFirstTime', value);
  }

  static Future<void> clearAllPrefs() async {
    await prefs?.clear();
  }
}
