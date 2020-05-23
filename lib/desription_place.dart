import 'package:flutter/material.dart';

enum StarType { COMPLETE, EMPTY, HALF }

class DescriptionPlace extends StatelessWidget {
  final String name;
  final int starsNumber;
  final String description;

  DescriptionPlace(this.name, this.description, this.starsNumber);

  Widget starWidget(StarType type) {
    IconData icon;
    switch (type) {
      case StarType.COMPLETE:
        icon = Icons.star;
        break;
      case StarType.EMPTY:
        icon = Icons.star_border;
        break;
      case StarType.HALF:
        icon = Icons.star_half;
        break;
      default:
    }

    final star = Container(
      margin: EdgeInsets.only(top: 283, left: 3),
      child: Icon(
        icon,
        color: Colors.yellow,
      ),
    );
    return star;
  }

  Widget build(BuildContext context) {
    final starWidgetArray = [];
    for (var i = 0; i < 5; i++) {
      if (starsNumber >= (i + 1)) {
        starWidgetArray.add(starWidget(StarType.COMPLETE));
      } else {
        starWidgetArray.add(starWidget(StarType.EMPTY));
      }
    }

    final titleStarsWidget = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 280, left: 20, right: 20),
          child: Text(
            name,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
        ),
        ...starWidgetArray
      ],
    );

    final descriptionWidget = Container(
      child: Text(
        description,
        style: TextStyle(fontSize: 15,
        fontFamily: ''),
      ),
      margin: EdgeInsets.only(top: 5, left: 20, right: 20),
    );

    final descriptionPlace = Column(
      children: <Widget>[titleStarsWidget, descriptionWidget],
    );

    return descriptionPlace;
  }
}
