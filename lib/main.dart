import 'package:accessctrl/app/modules/binding/splash_binding.dart';
import 'package:accessctrl/app/routes/app_pages.dart';
import 'package:accessctrl/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:accessctrl/app/modules/view/splash_page.dart';

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
