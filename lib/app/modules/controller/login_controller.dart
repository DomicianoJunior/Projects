import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

// import 'dart:async';
// import 'package:shared_preferences/shared_preferences.dart';

// Completer<SharedPreferences> _instancia = Completer<SharedPreferences>();

// void _iniciarShPreferences{}

class LoginController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  //Quando login_controller for inicializado ele vai executar onInit antes de renderizar a página
  void onInit() {
    super.onInit();
    scaffoldKey = GlobalKey<ScaffoldState>();
  }

  final TextEditingController userControler = TextEditingController();
  final TextEditingController senhaControler = TextEditingController();

  // Esta variavel serve para controlar se o usuario já fez acesso ao BD, ela esta como zero
  // e será alterada no primeiro login para 1 para registrar que o usuario ja acessou o sistema

  RxInt idUsuario = 0.obs;
  void updIdUsuario(int value) {
    idUsuario.value = value;
  }

  // String senha = '';

  // String usuario = '';

  RxString usuario = ''.obs;
  void updUsuario(String value) {
    usuario.value = value;
  }

  RxString senha = ''.obs;
  void updSenha(String value) {
    //print('estou em updSenha');
    senha.value = value;
  }

  RxBool senhaVisivel = false.obs;
  void mudaSenha() {
    //print('estou em muda senha');
    senhaVisivel.value = !senhaVisivel.value;
  }

  RxString login = ''.obs;
  void updlogin(String value) {
    login.value = value;
  }

  bool lembrarusuario = false;
  void updLembrarusuario(bool value) {
    lembrarusuario = value;
  }

  // RxString ip = ''.obs;
  // void updIP(String value) {
  //   ip.value = value;
  // }

  var urlBase = 'http:/localhost:8100'.obs;

  var loginRemoto = 'http:/localhost:8100/' +
      'Login?dwaccesstag=UVZGREVTT0tIMTAwSFhB&user=' +
      base64.encode(utf8.encode('junior')) +
      '&pwd=' +
      base64.encode(utf8.encode('j31r0513'));
}

// RxString _loginRemoto = ''.obs;
// get loginRemoto => this._loginRemoto.value;
// set loginRemoto(value) => this._loginRemoto.value = urlBase +
//     'Login?dwaccesstag=UVZGREVTT0tIMTAwSFhB&user=' +
//     base64.encode(utf8.encode(usuario.value)) +
//     '&pwd=' +
//     base64.encode(utf8.encode(senha.value));
