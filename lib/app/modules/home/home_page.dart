import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:picpayclone/app/views/ajuste_page_view.dart';
import 'package:picpayclone/app/views/carteira_page_view.dart';
import 'package:picpayclone/app/views/notificacoes_page_view.dart';
import 'package:picpayclone/app/views/pagamentos_page_view.dart';
import 'package:picpayclone/app/shared/styles.dart';
import 'package:picpayclone/app/widget/bottom_app_bar_widget.dart';
import 'package:picpayclone/app/widget/picpay_floating_action_button.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController>
    with TickerProviderStateMixin {
  HomeController _homeController = Modular.get<HomeController>();

  @override
  void initState() {
    super.initState();
    _homeController.tabControllerAtividades =
        TabController(vsync: this, length: 2);
    _homeController.tabControllerLocaisPagamento =
        TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: StyleColors.picPayPresBar,
      floatingActionButton: PicPayFloatingButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _homeController.controller,
        children: [
          PagamentosPageView(),
          CarteiraPageView(),
          NotificacoesPageView(),
          AjustePageView(),
        ],
      ),
      bottomNavigationBar: PicPayBottomAppBar(widthDevice: _widthDevice),
    );
  }
}
