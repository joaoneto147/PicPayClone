import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:picpayclone/app/models/atividade.dart';
import 'package:picpayclone/app/modules/home/home_controller.dart';
import 'package:picpayclone/app/shared/mocks.dart';
import 'package:picpayclone/app/widget/atividade_card_widget.dart';
import 'package:picpayclone/app/widget/atividades_widget.dart';
import 'package:picpayclone/app/widget/locais_bar.dart';
import 'package:picpayclone/app/widget/picpay_app_bar.dart';

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({this.height, this.body});

  final Widget body;
  final double height;

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return body;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class PagamentosPageView extends StatefulWidget {
  @override
  _PagamentosPageViewState createState() => _PagamentosPageViewState();
}

class _PagamentosPageViewState extends State<PagamentosPageView> {
  HomeController _homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    List<Atividade> atividadesTodos = PicPayMock.usuario.listaAtividades;
    List<Atividade> atividadesUsuario = PicPayMock.usuario.listaAtividades
        .where((atividade) => atividade.nomePagador == null)
        .toList();

    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: false,
            delegate: _SliverAppBarDelegate(
              height: 55,
              body: PicPayAppBar(),
            ),
          ),
          SliverPersistentHeader(
            pinned: false,
            delegate: _SliverAppBarDelegate(
              height: 190,
              body: GestureDetector(
                dragStartBehavior: DragStartBehavior.start,
                child: LocaisBar(
                    tabControllerSug:
                        _homeController.tabControllerLocaisPagamento),
                onTap: () {},
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              height: 55,
              body: AtividadesHeader(
                tabController: _homeController.tabControllerAtividades,
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: _homeController.tabControllerAtividades,
              children: [
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: atividadesTodos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AtividadeCard(
                      atividade: atividadesTodos[index],
                    );
                  },
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: atividadesUsuario.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AtividadeCard(
                      atividade: atividadesUsuario[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
