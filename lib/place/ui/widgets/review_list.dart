import 'package:flutter/material.dart';
import 'package:trips_tolima/place/ui/widgets/review.dart';


class ReviewList extends StatelessWidget{
  String pathImage = "assets/img/user.png";
  String name = "Camilo Cubillos";
  String details = "1 review 5 photos";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Review(pathImage,name , details, "Comentando mi nombre letra por letra:"),
          Review(pathImage,name , details, "C"),
          Review(pathImage,name , details, "A"),
          Review(pathImage,name , details, "M"),
          Review(pathImage,name , details, "I"),
          Review(pathImage,name , details, "L"),
          Review(pathImage,name , details, "O"),
        ],
    );
  }

}