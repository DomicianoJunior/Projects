import 'package:accessctrl/app/modules/splash/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  //const SplashPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) => SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('images/sca_icon_05.png'),
                ),
                SizedBox(height: 20),
                CircularProgressIndicator(),
                SizedBox(height: 30),
                Text('Carregando...'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
