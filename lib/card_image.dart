import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardImage = Container(
      height: 250,
      width: 250,
      margin: EdgeInsets.only(
        top:80,
        left:20
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://via.placeholder.com/140x100'),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle
      ),
    );
    return cardImage;
  }
}