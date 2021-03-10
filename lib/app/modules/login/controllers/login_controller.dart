import 'package:accessctrl/global_widgets/show_message.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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

  RxString ip = ''.obs;
  void updIP(String value) {
    ip.value = value;
  }

  var urlBase = 'https://172.20.10.4:8100/';

  // var loginRemoto =
  //     'Login?user=ZGF0YXByaW1l&pwd=c2VuaGE=&dwaccesstag=UVZGREVTT0tIMTAwSFhB' +
  //         base64.encode(utf8.encode('labar')) +
  //         '&pwd=' +
  //         base64.encode(utf8.encode('l01b02r0'));

  var loginRemoto =
      'Login?user=ZGF0YXByaW1l&pwd=c2VuaGE=&dwaccesstag=UVZGREVTT0tIMTAwSFhB';

  void logarUsario(ctx) async {
    http.Response response;
    try {
      //print(urlBase + ' ' + loginRemoto);
      response = await http.get(Uri.parse(urlBase + loginRemoto));

      // response = await http.get(Uri.parse('http://172.20.10.4:8100/Login?user=ZGF0YXByaW1l&pwd=c2VuaGE=&dwaccesstag=UVZGREVTT0tIMTAwSFhB'));

      print(response.body);

      if (response.statusCode == 200) {
        if (response.body != 'erro') {
          print('Login ok');
          showMessage(2, 'Login', 'Login ok', ctx);
          //     _gravaArqIni();

        } else
          showMessage(2, 'Login', 'Usuário ou senha incorreta', ctx);
      } else
        showMessage(2, 'Login', 'Erro na requisição', ctx);
    } catch (e) {
      showMessage(2, 'Login', 'Servidor offline', ctx);
    }
  }
}
