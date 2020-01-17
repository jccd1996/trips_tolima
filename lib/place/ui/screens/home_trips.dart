import 'package:flutter/material.dart';
import 'package:trips_tolima/place/ui/widgets/review_list.dart';

import '../widgets/description_place.dart';
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