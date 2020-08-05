import 'package:picpayclone/app/models/atividade.dart';
import 'package:picpayclone/app/models/formas_pagamento.dart';
import 'package:picpayclone/app/models/local_pagamento.dart';

class Usuario extends LocalPagamento {
  double saldoAtual;
  bool usarSaldoPagamento;

  List<FormasPagamento> formasPagamento;
  List<Atividade> listaAtividades;

  List<LocalPagamento> locaisPagamentoSugestoes;
  List<LocalPagamento> locaisPagamentoFavoritos;

  Usuario(
      {this.saldoAtual,
      this.usarSaldoPagamento,
      this.formasPagamento,
      this.listaAtividades,
      this.locaisPagamentoSugestoes,
      this.locaisPagamentoFavoritos,
      String nome,
      String id,
      String img})
      : super(img: img, id: id, nome: nome);
}
