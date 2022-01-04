import 'package:api_test/src/configs/appColors.dart';
import 'package:api_test/src/configs/appConfigs.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final appTheme = ThemeData(
    backgroundColor: white,
    fontFamily: regular,
    appBarTheme: AppBarTheme(
      backgroundColor: white,
      iconTheme: IconThemeData(
        color: black,
      ),
    ),
  );
}
