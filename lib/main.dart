import 'package:accessctrl/app/modules/splash/bindings/splash_binding.dart';
import 'package:accessctrl/app/modules/splash/views/splash_page.dart';
import 'package:accessctrl/app/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:accessctrl/app/routes/app_pages.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Guardian',
      initialBinding: SplashBinding(),
      theme: appThemeData,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
      home: SplashPage(),
    ),
  );
}
