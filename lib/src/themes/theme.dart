import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme();

  static ThemeData lightTheme = ThemeData(
    primaryColor: LightTheme.primaryColor,
    primaryColorLight: LightTheme.secondaryColor,
    scaffoldBackgroundColor: LightTheme.backgroundColor,
  );
}
