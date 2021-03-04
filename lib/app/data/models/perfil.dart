import 'package:flutter/material.dart';

class Perfil {
  final String idUsuario;
  final String idSistema;
  final String idRotina;
  final String acessos;

  // como todos os atributos são final posso criar o construtor como const
  const Perfil({
    @required this.idUsuario,
    @required this.idSistema,
    @required this.idRotina,
    @required this.acessos,
  });
}
