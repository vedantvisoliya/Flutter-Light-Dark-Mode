import 'package:flutter/material.dart';
import 'package:light_dark_mode/Themes/theme.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData _themeData = lightMode;
  // getter
  ThemeData get themeData => _themeData;
  // setters
  set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if(_themeData == lightMode){
      themeData = darkMode;
    }
    else{
      themeData = lightMode;
    }
  }
}