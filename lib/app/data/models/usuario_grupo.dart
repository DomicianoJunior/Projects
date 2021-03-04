import 'package:flutter/material.dart';

class UsuarioGrupo {
  final String idUsuario;
  final String idGrupo;

  // como todos os atributos são final posso criar o construtor como const
  const UsuarioGrupo({
    @required this.idUsuario,
    @required this.idGrupo,
  });
}
