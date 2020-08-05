import 'package:flutter/material.dart';
import 'package:picpayclone/app/shared/styles.dart';

class MenuItem {
  String title;
  String subtitle;

  MenuItem(this.title, {this.subtitle});
}

List<MenuItem> minhaContaMenu = [
  MenuItem('Meu PicPay', subtitle: '@netinhoyes'),
  MenuItem('Meu número', subtitle: '(62) 98104-9839'),
  MenuItem('Meu E-mail', subtitle: 'by.srneto@gmail.com'),
  MenuItem('Dados pessoais', subtitle: 'Nome, CPF e data de nascimento'),
  MenuItem('Conta Bancária'),
  MenuItem('Taxas e limites'),
  MenuItem('Meus endereços'),
  MenuItem('Meus favoritos'),
  MenuItem('Validar Identidade', subtitle: 'Não verificado'),
  MenuItem('Atualizar cadastro'),
];

List<MenuItem> promocoesMenu = [
  MenuItem('Usar código promocional'),
  MenuItem('Convide seus amigos'),
];

List<MenuItem> configuracoesMenu = [
  MenuItem('Usar digital para pagar'),
  MenuItem('Alterar senha'),
  MenuItem('Privacidade'),
  MenuItem('Notificações'),
  MenuItem('Contas vinculadas'),
];

List<MenuItem> geralMenu = [
  MenuItem('Precisa de ajuda?'),
  MenuItem('Sobre o PicPay'),
  MenuItem('Desativar minha conta'),
];

class AjustePageView extends StatefulWidget {
  AjustePageView({Key key}) : super(key: key);

  @override
  _AjustePageViewState createState() => _AjustePageViewState();
}

class _AjustePageViewState extends State<AjustePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleColors.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    'Ajuda',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: StyleColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            buildUserAvatar(context),
            buildMenu('Minha conta', minhaContaMenu),
            buildMenu('Promoções', promocoesMenu),
            buildMenu('Configurações', configuracoesMenu),
            buildMenu('Geral', geralMenu),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 0.3,
                  ),
                ),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(15, 1, 1, 1),
                title: Text(
                  'Sair',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  buildUserAvatar(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 25),
          CircleAvatar(
            radius: 75,
            backgroundImage: AssetImage("assets/images/neto.jpg"),
          ),
          SizedBox(height: 15),
          Text(
            '@netinhoyes',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'João Batista Borges Neto',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 17,
              color: StyleColors.colorSubTitleTextColor,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Ver meu perfil >',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: StyleColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Column buildMenu(String title, List<MenuItem> menu) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 10, top: 30),
          child: Text(
            title,
            style: TextStyle(
              color: StyleColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Card(
          elevation: 2,
          margin: EdgeInsets.zero,
          child: Column(
            children: List.generate(
              menu.length,
              (index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 0.3,
                      ),
                    ),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 1, 1, 1),
                    title: Text(
                      menu[index].title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: menu[index].subtitle == null
                        ? null
                        : Text(
                            menu[index].subtitle,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
