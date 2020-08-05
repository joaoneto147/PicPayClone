import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:picpayclone/app/models/formas_pagamento.dart';

class FormaPagamento extends StatelessWidget {
  final FormasPagamento formaPagamento;

  const FormaPagamento({Key key, this.formaPagamento}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  FormasPagamento.getImage(formaPagamento.bandeira),
                  fit: BoxFit.contain,
                  height: 48,
                  width: 48,
                ),
                SizedBox(width: 8),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: FormasPagamento.getNomeBandeira(
                            formaPagamento.bandeira),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      TextSpan(
                        text: '\n${formaPagamento.nome}',
                        style: TextStyle(color: Colors.black38),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  MaterialCommunityIcons.alert_circle,
                  color: Colors.blue,
                ),
                SizedBox(width: 5),
                Text(
                  "Toque para verificar seu cartão",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
