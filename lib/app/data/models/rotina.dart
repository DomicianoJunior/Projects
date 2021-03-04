import 'package:flutter/material.dart';

class Rotina {
  final String idSistema;
  final String idRotina;
  final String nomeRotina;
  final String botoes;

  // como todos os atributos são final posso criar o construtor como const
  const Rotina({
    @required this.idSistema,
    @required this.idRotina,
    @required this.nomeRotina,
    @required this.botoes,
  });
}
