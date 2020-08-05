import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:picpayclone/app/shared/mocks.dart';
import 'package:picpayclone/app/shared/styles.dart';
import 'package:picpayclone/app/widget/forma_pagamento_widget.dart';

TextStyle topTextStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 14,
  );
}

TextStyle subTitleStyle() {
  return TextStyle(
    color: StyleColors.colorSubTitleTextColor,
  );
}

class CarteiraPageView extends StatefulWidget {
  @override
  _CarteiraPageViewState createState() => _CarteiraPageViewState();
}

class _CarteiraPageViewState extends State<CarteiraPageView> {
  bool usarSaldo = PicPayMock.usuario.usarSaldoPagamento;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleColors.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildTopBanner(context),
            buildCardUsarSaldo(context),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: buildNovidadeContainer(context),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                "Formas de pagamento",
                style: subTitleStyle(),
              ),
            ),
            Column(
              children: List.generate(PicPayMock.usuario.formasPagamento.length,
                  (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: FormaPagamento(
                    formaPagamento: PicPayMock.usuario.formasPagamento[index],
                  ),
                );
              }),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 15),
              child: buildAddCartao(context),
            ),
          ],
        ),
      ),
    );
  }

  Card buildAddCartao(BuildContext context) {
    return Card(
      color: Colors.white,
      child: InkResponse(
        onTap: () {},
        containedInkWell: true,
        highlightShape: BoxShape.rectangle,
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: <Widget>[
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  MaterialCommunityIcons.plus,
                  color: StyleColors.primaryColor,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Adicionar cartão de crédito",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: StyleColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column buildNovidadeContainer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Novidade",
          style: subTitleStyle(),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 1,
          margin: EdgeInsets.only(top: 10),
          child: Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Seu PicPay Card está\nPré-aprovado!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          bottom: 10.0,
                        ),
                        child: Text(
                          "Peça agora e deixe sua experiência\nPicPay ainda mais completa.",
                          style: TextStyle(
                            fontSize: 13,
                            color: StyleColors.colorSecundaryTextColor,
                          ),
                        ),
                      ),
                      Text(
                        "Toque para saber mais",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromRGBO(20, 187, 99, 1.0),
                        ),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Image.asset(
                    "assets/images/card.png",
                    width: 90,
                    height: 90,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container buildCardUsarSaldo(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      width: MediaQuery.of(context).size.width,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Usar o saldo ao pagar",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            Switch(
              value: usarSaldo,
              onChanged: (value) {
                setState(() {
                  usarSaldo = value;
                });
              },
              activeColor: StyleColors.switchActiveColor,
            ),
          ]),
      decoration: new BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.black54,
            width: 0.5,
          ),
        ),
      ),
    );
  }

  Stack buildTopBanner(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          switchInCurve: Curves.decelerate,
          switchOutCurve: Curves.decelerate,
          child: Container(
            key: ValueKey<bool>(usarSaldo),
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              gradient: usarSaldo
                  ? StyleColors.colorUseSaldo
                  : StyleColors.colorNotUseSaldo,
            ),
          ),
          duration: Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
        Positioned(
          top: 40,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Text(
                  "Saldo PicPay",
                  style: topTextStyle(),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "R\$",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "0,00",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Seu saldo está rendendo 100% do CDI",
                  style: topTextStyle(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      buildButtonTop("Adicionar", FontAwesome5.money_bill_alt),
                      buildButtonTop("Retirar", FontAwesome.university),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Container buildButtonTop(String title, IconData icon) {
    return Container(
      width: (MediaQuery.of(context).size.width / 2) - 20,
      height: 40,
      child: FlatButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 14,
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
      ),
    );
  }
}
