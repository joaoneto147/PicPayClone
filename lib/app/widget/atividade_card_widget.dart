import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:picpayclone/app/models/atividade.dart';

import 'like_comment_widget.dart';

class AtividadeCard extends StatelessWidget {
  final Atividade atividade;

  const AtividadeCard({
    Key key,
    this.atividade,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        atividade.localPagamento.img,
                      ),
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    atividade.nomePagador == null
                        ? 'Você'
                        : atividade.nomePagador,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Text(
                    " ${atividade.descricao} ",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Text(
                    atividade.localPagamento.id,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 18, 12, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                buildDetalhesTransacao(atividade),
                LikeAndComment(),
              ],
            ),
          )
        ],
      ),
    );
  }

  buildDetalhesTransacao(Atividade atividade) {
    return Row(children: <Widget>[
      Text(
        "R\$ ${atividade.valorAtividade}",
        style: TextStyle(color: Colors.red),
      ),
      Text(
        " | ",
      ),
      Icon(
        MaterialIcons.people_outline,
        color: Colors.grey[300],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
          atividade.dataAtividade,
        ),
      ),
    ]);
  }
}
