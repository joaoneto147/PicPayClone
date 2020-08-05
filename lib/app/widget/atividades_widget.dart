import 'package:flutter/material.dart';
import 'package:picpayclone/app/shared/styles.dart';

class AtividadesHeader extends StatefulWidget implements PreferredSizeWidget {
  final TabController tabController;

  const AtividadesHeader({Key key, this.tabController}) : super(key: key);

  @override
  _AtividadesHeaderState createState() => _AtividadesHeaderState();

  @override
  Size get preferredSize => Size.fromHeight(0.0);
}

class _AtividadesHeaderState extends State<AtividadesHeader>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: StyleColors.picPayPresBar,
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 15),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text(
                    "Atividades",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TabBar(
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    controller: widget.tabController,
                    indicatorColor: StyleColors.primaryColor,
                    unselectedLabelColor: StyleColors.picPayColorTextTab,
                    labelColor: StyleColors.primaryColor,
                    labelPadding: EdgeInsets.only(right: 0, left: 0),
                    tabs: [
                      Tab(
                        text: 'Todos',
                      ),
                      Tab(
                        text: 'Minhas',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
