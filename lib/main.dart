import 'package:flutter/material.dart';
import 'package:trips_tolima/description_place.dart';
import 'package:trips_tolima/gradient_back.dart';
import 'package:trips_tolima/header_appbar.dart';
import 'package:trips_tolima/platzi_trips.dart';
import 'package:trips_tolima/review.dart';
import 'package:trips_tolima/review_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      home: PlatziTrips(),
    );
  }
}
