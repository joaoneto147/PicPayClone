// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$paginaAtualAtom = Atom(name: '_HomeControllerBase.paginaAtual');

  @override
  int get paginaAtual {
    _$paginaAtualAtom.reportRead();
    return super.paginaAtual;
  }

  @override
  set paginaAtual(int value) {
    _$paginaAtualAtom.reportWrite(value, super.paginaAtual, () {
      super.paginaAtual = value;
    });
  }

  final _$tabControllerAtividadesAtom =
      Atom(name: '_HomeControllerBase.tabControllerAtividades');

  @override
  TabController get tabControllerAtividades {
    _$tabControllerAtividadesAtom.reportRead();
    return super.tabControllerAtividades;
  }

  @override
  set tabControllerAtividades(TabController value) {
    _$tabControllerAtividadesAtom
        .reportWrite(value, super.tabControllerAtividades, () {
      super.tabControllerAtividades = value;
    });
  }

  final _$controllerAtom = Atom(name: '_HomeControllerBase.controller');

  @override
  PageController get controller {
    _$controllerAtom.reportRead();
    return super.controller;
  }

  @override
  set controller(PageController value) {
    _$controllerAtom.reportWrite(value, super.controller, () {
      super.controller = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setActivePage(int newPageId) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setActivePage');
    try {
      return super.setActivePage(newPageId);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
paginaAtual: ${paginaAtual},
tabControllerAtividades: ${tabControllerAtividades},
controller: ${controller}
    ''';
  }
}
