import 'package:flutter/material.dart';
import 'package:hello_world/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardImageList = Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage(),
          CardImage(),
          CardImage()
        ],
      ),
    );
    return cardImageList;
  }

}