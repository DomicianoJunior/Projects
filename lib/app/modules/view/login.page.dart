import 'package:accessctrl/app/modules/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return GestureDetector(
    //   onTap: () {
    //     FocusScope.of(context).requestFocus(FocusNode());
    //   },

    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.lime[300],
            body: Container(
              padding: EdgeInsets.only(top: 30, left: 40, right: 40),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    width: 128,
                    height: 128,
                    child: Image.asset('images/sca_icon_05.png'),
                  ),
                  Text(
                    'Controle de Acesso',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 60),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Usuário',
                      hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      prefixIcon: Icon(
                        FontAwesomeIcons.user,
                        color: Colors.black,
                        size: 22,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Obx(() => TextField(
                        obscureText: _.senhaVisivel.value,
                        controller: _.senhaControler,
                        onChanged: _.updSenha,
                        decoration: InputDecoration(
                          hintText: 'Senha',
                          hintStyle:
                              TextStyle(fontSize: 16, color: Colors.black),
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(10),
                          // ),
                          prefixIcon: Icon(
                            FontAwesomeIcons.lock,
                            color: Colors.black,
                            size: 22,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: _.mudaSenha,
                            child: Icon(
                              _.senhaVisivel.value
                                  ? FontAwesomeIcons.eye
                                  : FontAwesomeIcons.eyeSlash,
                              size: 22,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )),
                  SizedBox(height: 5),
                  Container(
                    height: 40,
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      child: Text(
                        "Recuperar Senha",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {
                        Get.toNamed('/resetpsw');
                      },
                    ),
                  ),
                  SizedBox(height: 3),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3, 1],
                        colors: [
                          Color(0xFF21AFFF),
                          Color(0xFF21AFFF),
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: SizedBox.expand(
                      child: TextButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "Login",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            // Container(
                            // isso aqui é o icone que fica no botao Login
                            //   child: SizedBox(
                            //       child: Image.asset("assets/bone.png"),
                            //       height: 28,
                            //       width: 28),
                            // )
                          ],
                        ),
                        onPressed: () {
                          Get.toNamed('/home');
                          // print('Tô aqui');
                          // print(LoginController().urlBase);

                          print(LoginController().loginRemoto);
                          //LoginController().loginRemoto;
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      child: Text(
                        "Cadastre-se",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      onPressed: () {
                        Get.toNamed('/signup');
                      },
                    ),
                  ),
                  SizedBox(height: 80),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black, //white10,
                                  Colors.black, //white,
                                ],
                                begin: FractionalOffset(0, 0),
                                end: FractionalOffset(1, 1),
                                stops: [0, 1],
                                tileMode: TileMode.clamp,
                              ),
                            ),
                            width: 50,
                            height: 2,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Labar Informática',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        SizedBox(width: 5),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black, //white10,
                                Colors.black, //white,
                              ],
                              begin: FractionalOffset(0, 0),
                              end: FractionalOffset(1, 1),
                              stops: [0, 1],
                              tileMode: TileMode.clamp,
                            ),
                          ),
                          width: 50,
                          height: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

/*
class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => Scaffold(),
    );
  }
}
*/
