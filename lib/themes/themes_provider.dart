import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes/dark_mode.dart'; // Assurez-vous d'importer les bons fichiers de thème
import 'package:flutter_application_1/themes/lightmode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
