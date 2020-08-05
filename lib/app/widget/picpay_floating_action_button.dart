import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class PicPayFloatingButton extends StatelessWidget {
  final void Function() onPressed;

  PicPayFloatingButton({
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onPressed,
      child: Padding(
        padding: new EdgeInsets.only(top: 40.0),
        child: new Container(
          width: 60,
          height: 60,
          decoration: new BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                ),
              ],
              gradient: new LinearGradient(
                  colors: [Color(0XFFff57e583), Color(0XFFff0db75e)],
                  begin: Alignment.centerRight,
                  end: new Alignment(-1.0, -1.0))),
          child: Column(
            children: <Widget>[
              Padding(
                padding: new EdgeInsets.only(top: 8.0),
                child: Image.asset(
                  'assets/images/ic_cifrao_pagar.png',
                  height: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
