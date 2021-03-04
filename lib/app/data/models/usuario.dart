import 'package:flutter/material.dart';

class Usuario {
  final String idUsuario;
  final String nomeUsuario;
  final String loginUsuario;
  final String senhaUsuario;
  final String emailUsuario;
  final String statusUsuario;

  // como todos os atributos são final posso criar o construtor como const
  const Usuario({
    @required this.idUsuario,
    @required this.nomeUsuario,
    @required this.loginUsuario,
    @required this.senhaUsuario,
    @required this.emailUsuario,
    @required this.statusUsuario,
  });
}
