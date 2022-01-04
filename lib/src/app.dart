import 'package:api_test/src/configs/appTheme.dart';
import 'package:api_test/src/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.appTheme,
      smartManagement: SmartManagement.onlyBuilder,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
