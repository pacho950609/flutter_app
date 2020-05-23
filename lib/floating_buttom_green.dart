import 'package:flutter/material.dart';

class FloatingButtomGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingButtomGreen();
  }
}

class _FloatingButtomGreen extends State<FloatingButtomGreen> {

  void onPressedButtom() {
    Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('mostrar un mensaje'),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final floatingButtomGreen = FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      onPressed: onPressedButtom,
      child: Icon(Icons.favorite_border),
    );
    return floatingButtomGreen;
  }
}
