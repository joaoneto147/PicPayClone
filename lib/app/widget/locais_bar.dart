import 'package:flutter/material.dart';
import 'package:picpayclone/app/shared/mocks.dart';
import 'package:picpayclone/app/shared/styles.dart';

import 'local_pagamento_widget.dart';

class LocaisBar extends StatefulWidget implements PreferredSizeWidget {
  final TabController tabControllerSug;

  const LocaisBar({Key key, this.tabControllerSug}) : super(key: key);
  @override
  _LocaisBarState createState() => _LocaisBarState();

  @override
  Size get preferredSize => Size(45.0, 10);
}

class _LocaisBarState extends State<LocaisBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      color: StyleColors.primaryColor,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TabBar(
                  indicatorColor: StyleColors.secundaryColor,
                  controller: widget.tabControllerSug,
                  tabs: <Widget>[
                    Tab(
                      text: "Sugestões",
                    ),
                    Tab(
                      text: "Favoritos",
                    ),
                  ],
                ),
              ),
              SizedBox(width: 210),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: widget.tabControllerSug,
              children: [
                ListLocalPagamentoWidget(
                    listaLocais: PicPayMock.usuario.locaisPagamentoSugestoes),
                ListLocalPagamentoWidget(
                    listaLocais: PicPayMock.usuario.locaisPagamentoFavoritos)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
