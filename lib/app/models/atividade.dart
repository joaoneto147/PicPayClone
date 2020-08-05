import 'package:picpayclone/app/models/local_pagamento.dart';

class Atividade {
  String nomePagador;
  String descricao;
  String dataAtividade;
  String valorAtividade;
  LocalPagamento localPagamento;

  Atividade({
    this.nomePagador,
    this.descricao,
    this.dataAtividade,
    this.valorAtividade,
    this.localPagamento,
  });
}
