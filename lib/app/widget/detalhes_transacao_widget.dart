import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetalhesTransacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Text(
        "R\$ 60,00",
        style: TextStyle(color: Colors.red),
      ),
      Text(
        " | ",
      ),
      Icon(
        MaterialIcons.people_outline,
        color: Colors.grey[300],
      ),
      Text(
        " 1 mês atrás ",
      ),
    ]);
  }
}
