import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:picpayclone/app/shared/mocks.dart';
import 'package:picpayclone/app/shared/styles.dart';

class PicPayAppBar extends StatelessWidget {
  final saldo = PicPayMock.usuario.saldoAtual;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 50, 0),
          child: Icon(
            MaterialCommunityIcons.qrcode_scan,
            color: StyleColors.primaryColor,
            size: 25,
          ),
        ),
        Container(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Meu Saldo"),
              Text(
                "R\$ $saldo",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Icon(
            MaterialCommunityIcons.gift_outline,
            color: StyleColors.primaryColor,
            size: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
          child: Icon(
            MaterialCommunityIcons.ticket_percent,
            color: StyleColors.primaryColor,
            size: 25,
          ),
        ),
      ],
    );
  }
}
