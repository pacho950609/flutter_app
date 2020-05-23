import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    final listWidget = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          Review('Pachito1',1,2,'There are many variations and should be more and more'),
          Review('Pachito2',1,2,'There are many variations and should be more and more'),
          Review('Pachito3',1,2,'There are many variations and should be more and more'),
          Review('Pachito4',1,2,'There are many variations and should be more and more'),
          Review('Pachito5',1,2,'There are many variations and should be more and more'),
          Review('Pachito5',1,2,'There are many variations and should be more and more'),
          Review('Pachito5',1,2,'There are many variations and should be more and more')
      ],
    );

    final scroll =  SingleChildScrollView(
      child: listWidget,
    );

    return scroll;
  }


}