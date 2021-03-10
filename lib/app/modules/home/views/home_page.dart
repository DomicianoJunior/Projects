import 'package:accessctrl/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
//import 'dart:ui';

//import 'package:accessctrl/app/data/models/sistemas.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            centerTitle: true,
            title: Text(
              'Menu Principal',
            ),
          ),
          body: ListView(
            primary: false,
            padding: EdgeInsets.only(left: 8),
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    children: [
                      ListTile(
                        title: Text('Sistemas'),
                        onTap: () {
                          Get.toNamed('/sistemaslista');
                        },
                      ),
                      ListTile(
                        title: Text('Rotinas'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: Text('Usuários'),
                        onTap: () {
                          Get.toNamed('/usuarioslista');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
