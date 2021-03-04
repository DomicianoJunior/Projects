import 'package:flutter/material.dart';

class UsuarioSistema {
  final String idUsuario;
  final String idSistema;

  // como todos os atributos são final posso criar o construtor como const
  const UsuarioSistema({
    @required this.idUsuario,
    @required this.idSistema,
  });
}
