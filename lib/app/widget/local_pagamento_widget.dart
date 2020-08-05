import 'package:flutter/material.dart';
import 'package:picpayclone/app/models/local_pagamento.dart';
import 'package:picpayclone/app/shared/styles.dart';

class ListLocalPagamentoWidget extends StatelessWidget {
  final List<LocalPagamento> listaLocais;

  const ListLocalPagamentoWidget({Key key, this.listaLocais}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 14, 10, 10),
      child: ListView.separated(
        separatorBuilder: (BuildContext context, index) => SizedBox(width: 10),
        itemCount: listaLocais.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  border:
                      Border.all(color: StyleColors.secundaryColor, width: 2),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(listaLocais[index].img),
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  child: Text(
                    listaLocais[index].nome,
                    maxLines: 2,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  height: 34,
                  width: 65,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
