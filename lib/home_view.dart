import 'package:flutter/material.dart';
import 'package:hello_world/header_app_bar.dart';
import 'package:hello_world/review_list.dart';

import 'desription_place.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}