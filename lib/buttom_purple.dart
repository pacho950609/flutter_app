import 'package:flutter/material.dart';

class ButtomPurple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttomPurple = InkWell(
        onTap: () => {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('mostrar un mensaje'),
            )
          )
        },
        child: Container(
          height: 40,
          width: 150,
          child: Center(
              child: Text(
            'Navegar',
            style: TextStyle(color: Colors.white),
          )),
          margin: EdgeInsets.only(top: 12, bottom: 12, left: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  colors: [
                    Color(0xFF4268D3),
                    Color(0xFF584CD1),
                  ],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.6],
                  tileMode: TileMode.clamp)),
        ));

    return buttomPurple;
  }
}
