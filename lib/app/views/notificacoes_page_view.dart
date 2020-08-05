import 'package:flutter/material.dart';

class NotificacoesPageView extends StatefulWidget {
  @override
  _NotificacoesPageViewState createState() => _NotificacoesPageViewState();
}

class _NotificacoesPageViewState extends State<NotificacoesPageView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Notificações',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Text(
                'Configurar',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 10, right: 10),
          height: MediaQuery.of(context).size.height - 120,
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
            itemBuilder: (_, __) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Fim de mês aperta né ? Mas parcelando um boleto hoje com PicPay, você ganha até 10% de volta. Toque e veja.',
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hoje às 16:28',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              );
            },
            separatorBuilder: (_, __) {
              return Divider(
                color: Colors.black45,
              );
            },
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
