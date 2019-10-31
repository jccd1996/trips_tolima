import 'package:flutter/material.dart';
import 'package:trips_tolima/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

// ignore: must_be_immutable
class HomeTrips extends StatelessWidget {
  String description = "La capital musical de Colombia";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Ibague", 4, description),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}