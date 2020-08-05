import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int paginaAtual = 0;

  @observable
  TabController tabControllerAtividades;
  TabController tabControllerLocaisPagamento;

  @observable
  PageController controller = PageController(
    initialPage: 0,
  );

  @action
  void setActivePage(int newPageId) {
    paginaAtual = newPageId;
    controller.jumpToPage(newPageId);
  }
}
