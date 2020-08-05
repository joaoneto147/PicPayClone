import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:picpayclone/app/modules/home/home_controller.dart';
import 'package:picpayclone/app/shared/styles.dart';

class PicPayBottomAppBar extends StatelessWidget {
  static List<Map<String, IconData>> menuItembar = [
    {'Inicio': Foundation.home},
    {'Carteira': MaterialCommunityIcons.wallet_outline},
    {'Notificações': MaterialCommunityIcons.bell_outline},
    {'Ajustes': MaterialCommunityIcons.settings_outline},
  ];

  PicPayBottomAppBar({
    Key key,
    @required double widthDevice,
  })  : _widthDevice = widthDevice,
        super(key: key);

  final double _widthDevice;

  final HomeController _homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    int posicItem = -1;
    var spaceWidgetPosic = [0, 2, 4, 6];

    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItembar.length * 2,
          (index) {
            if (spaceWidgetPosic.contains(index)) {
              return SizedBox(width: _widthDevice * (index == 4 ? 0.20 : 0.05));
            } else {
              posicItem++;
              return buildItemBar(
                icon: menuItembar[posicItem].entries.map((f) => f.value).single,
                titulo: menuItembar[posicItem].entries.map((f) => f.key).single,
                posicItem: posicItem,
              );
            }
          },
        ),
      ),
    );
  }

  buildItemBar({IconData icon, String titulo, int posicItem}) {
    return Observer(
      builder: (_) {
        Color itemColor = _homeController.paginaAtual == posicItem
            ? StyleColors.colorItemBottomBar
            : Colors.grey;
        return InkResponse(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  icon,
                  size: 30,
                  color: itemColor,
                ),
                Text(
                  titulo,
                  style: TextStyle(
                    fontSize: 11,
                    color: itemColor,
                  ),
                )
              ],
            ),
          ),
          onTap: () {
            _homeController.setActivePage(posicItem);
          },
        );
      },
    );
  }
}
