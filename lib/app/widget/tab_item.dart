import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final bool active;

  const TabItem({Key key, this.icon, this.titulo, this.active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            icon,
            size: 30,
            color: active ? Colors.green : Colors.grey,
          ),
          Text(
            titulo,
            style: TextStyle(fontSize: 11),
          )
        ],
      ),
    );
  }
}
