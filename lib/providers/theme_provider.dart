import 'package:flutter/material.dart';


import '../ utils/shared_prefs.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = SharedPrefs.getDarkMode();

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    SharedPrefs.setDarkMode(_isDarkMode);
    notifyListeners();
  }
}
