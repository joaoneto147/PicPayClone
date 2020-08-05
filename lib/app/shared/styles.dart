import 'package:flutter/material.dart';

class StyleColors {
  static Color picPayPresBar = Color(0xFFF0F0F0);
  static Color secundaryColor = Color(0xFFF0F0F0);
  static Color primaryColor = Color(0xFF10C66F);
  static Color picPayColorTextTab = Color(0xFFAAAAAA);
  static Color colorItemBottomBar = Color(0xFF016432);

  static Gradient colorUseSaldo = LinearGradient(colors: [
    Color.fromRGBO(77, 223, 125, 1.0),
    Color.fromRGBO(20, 187, 99, 1.0),
  ]);
  static Gradient colorNotUseSaldo = LinearGradient(colors: [
    Colors.grey[400],
    Colors.grey[600],
  ]);

  //Colors Carteira Page
  static Color backGroundColor = Color.fromRGBO(242, 242, 242, 1);
  static Color colorSubTitleTextColor = Color.fromRGBO(150, 160, 156, 1);
  static Color colorSecundaryTextColor = Color.fromRGBO(150, 160, 156, 1);
  static Color switchActiveColor = Color.fromRGBO(17, 194, 110, 1.0);
}
