import 'package:flutter/material.dart';

class Sistema {
  final String id;
  final String descricao;
  final String sigla;

  // como todos os atributos são final posso criar o construtor como const
  const Sistema({
    this.id,
    @required this.descricao,
    @required this.sigla,
  });

  // factory Sistema.fromMap(Map<String, dynamic> oSistema) => Sistema(
  //       id: oSistema['id'],
  //       descricao: oSistema['descricao'],
  //       sigla: oSistema['sigla'],
  //     );

  // List<Sistema> lstSistema = [
  //   Sistema(id: '1', descricao: 'Controle de Acesso ', sigla: 'AC'),
  //   Sistema(id: '2', descricao: 'Contabilidade ', sigla: 'CTB'),
  //   Sistema(id: '3', descricao: 'Elaboração Orçamentária', sigla: 'ELA'),
  //   Sistema(id: '4', descricao: 'Execução Orçamentária', sigla: 'EXO'),
  // ];
}
