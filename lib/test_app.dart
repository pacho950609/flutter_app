import 'package:flutter/material.dart';
import 'package:hello_world/header_app_bar.dart';
import 'package:hello_world/home_view.dart';
import 'package:hello_world/profile_view.dart';
import 'package:hello_world/review_list.dart';
import 'package:hello_world/search_view.dart';

import 'desription_place.dart';


class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestApp();
  }
}

class _TestApp  extends State<TestApp> {

  int viewIndex = 0;

  final List<Widget> viewList = [
    HomeView(),
    SearchView(),
    ProfileView()
  ];

  void setCurrentIndex (newIndex) {
    setState(() {
      viewIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Theme(
         data: Theme.of(context).copyWith(
           canvasColor: Colors.white,
           primaryColor: Colors.purple
         ),
        child: BottomNavigationBar(
          currentIndex: viewIndex,
          onTap: setCurrentIndex,
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('')
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('')
          )
        ],),
      ),
      body: viewList[viewIndex]);
  }
}
