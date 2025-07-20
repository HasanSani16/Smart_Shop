import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Login state
  static Future<void> saveLoginState(bool isLoggedIn) async {
    await _prefs.setBool('isLoggedIn', isLoggedIn);
  }

  static bool isLoggedIn() {
    return _prefs.getBool('isLoggedIn') ?? false;
  }

  static Future<void> clearLoginState() async {
    await _prefs.remove('isLoggedIn');
  }

  // Theme preference
  static Future<void> setDarkMode(bool value) async {
    await _prefs.setBool('isDarkMode', value);
  }

  static bool getDarkMode() {
    return _prefs.getBool('isDarkMode') ?? false;
  }

  // Favourite products
  static Future<void> saveFavourites(List<int> favIds) async {
    await _prefs.setStringList('favourites', favIds.map((e) => e.toString()).toList());
  }

  static List<int> getFavourites() {
    return _prefs.getStringList('favourites')?.map((e) => int.parse(e)).toList() ?? [];
  }
}
