import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class LikeAndComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Icon(
          Octicons.comment,
          color: Colors.grey[300],
        ),
        Text(
          " 0 ",
        ),
        Icon(
          FontAwesome5.heart,
          color: Colors.grey[300],
        ),
        Text(
          " 0 ",
        ),
      ],
    );
  }
}
