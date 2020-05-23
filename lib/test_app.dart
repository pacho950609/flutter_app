import 'package:flutter/material.dart';
import 'package:hello_world/header_app_bar.dart';
import 'package:hello_world/review_list.dart';

import 'desription_place.dart';


class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestApp();
  }
}

class _TestApp  extends State<TestApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Hola mundo"),
        // ),
        // body: Column(children: <Widget>[
        //   new DescriptionPlace('Estilo1','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected huma.',4),
        //   new ReviewList()
        // ],)
        bottomNavigationBar: Theme(
         data: Theme.of(context).copyWith(
           canvasColor: Colors.white,
           primaryColor: Colors.purple
         ),
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('')
          )

        ],),
      ),
      body: Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            new DescriptionPlace(
                'Estilo1',
                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected huma.',
                4),
            new ReviewList()
          ],
        ),
        HeaderAppBar(),
      ],
    ));
  }
}
