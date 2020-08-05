import 'package:picpayclone/app/models/atividade.dart';
import 'package:picpayclone/app/models/formas_pagamento.dart';
import 'package:picpayclone/app/models/local_pagamento.dart';
import 'package:picpayclone/app/models/usuario.dart';

class PicPayMock {
  static Usuario usuario = Usuario(
    nome: 'Sylvester Stallone',
    id: '@sylvester.stallone',
    img: 'assets/images/sylvester.jpg',
    saldoAtual: 129.91,
    usarSaldoPagamento: true,
    formasPagamento: [
      FormasPagamento(
        bandeira: BandeirasCartao.elo,
        finalCartao: 5010,
        nome: "Cartão com final 5010",
      ),
      FormasPagamento(
        bandeira: BandeirasCartao.master,
        finalCartao: 5011,
        nome: "Cartão com final 5011",
      ),
      FormasPagamento(
        bandeira: BandeirasCartao.visa,
        finalCartao: 5012,
        nome: "Cartão com final 5012",
      ),
    ],
    listaAtividades: [
      Atividade(
        nomePagador: null,
        dataAtividade: '1 mês atrás',
        descricao: 'pagou a',
        localPagamento: LocalPagamento(
          nome: 'Bruce Willis',
          id: '@bruce.willis',
          img: 'assets/images/bruce.jpg',
        ),
        valorAtividade: '30,00',
      ),
      Atividade(
        nomePagador: '@chuck.norris',
        dataAtividade: '2 mês atrás',
        descricao: 'fez uma ',
        localPagamento: LocalPagamento(
          nome: 'Chuck Norris',
          id: 'recarga de celular',
          img: 'assets/images/chuck.jpg',
        ),
        valorAtividade: '25,70',
      ),
      Atividade(
        nomePagador: '@bruce.willis',
        dataAtividade: '2 mês atrás',
        descricao: 'pagou a',
        localPagamento: LocalPagamento(
          nome: 'Chuck Norris',
          id: '@chuck.norris',
          img: 'assets/images/chuck.jpg',
        ),
        valorAtividade: '180,00',
      ),
      Atividade(
        nomePagador: '@chuck.norris',
        dataAtividade: '3 mês atrás',
        descricao: 'pagou a',
        localPagamento: LocalPagamento(
          nome: 'Arnold S.',
          id: '@arnold',
          img: 'assets/images/arnold.jpg',
        ),
        valorAtividade: '12,00',
      ),
      Atividade(
        nomePagador: '@bruce.willis',
        dataAtividade: '1 mês atrás',
        descricao: 'pagou a',
        localPagamento: LocalPagamento(
          nome: 'Você',
          id: '@netinhoyes',
          img: 'assets/images/neto.jpg',
        ),
        valorAtividade: '180,00',
      ),
      Atividade(
        nomePagador: null,
        dataAtividade: '1 mês atrás',
        descricao: 'pagou a',
        localPagamento: LocalPagamento(
          nome: 'Bruce Willis',
          id: '@bruce.willis',
          img: 'assets/images/bruce.jpg',
        ),
        valorAtividade: '90,00',
      ),
    ],
    locaisPagamentoFavoritos: [
      LocalPagamento(
        nome: 'Arnold S.',
        id: '@arnold',
        img: 'assets/images/arnold.jpg',
      ),
      LocalPagamento(
        nome: 'Bruce Willis',
        id: '@bruce.willis',
        img: 'assets/images/bruce.jpg',
      ),
    ],
    locaisPagamentoSugestoes: [
      LocalPagamento(
        nome: 'Central de Doações',
        id: '@central_doacoes',
        img: 'assets/images/central_doacoes.png',
      ),
      LocalPagamento(
        nome: 'Pagar conta',
        id: '@central_doacoes',
        img: 'assets/images/pagar_conta.png',
      ),
      LocalPagamento(
        nome: 'Arnold S.',
        id: '@arnold',
        img: 'assets/images/arnold.jpg',
      ),
      LocalPagamento(
        nome: 'Chuck Norris',
        id: '@chuck.norris',
        img: 'assets/images/chuck.jpg',
      ),
      LocalPagamento(
        nome: 'Bruce Willis',
        id: '@bruce.willis',
        img: 'assets/images/bruce.jpg',
      ),
    ],
  );
}
