import 'package:flutter/material.dart';
import 'package:trips_tolima/place/ui/widgets/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    double width = 300;
    double height = 350;
    double left = 20;
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImageWithFabIcon(
              pathImage: "assets/img/ibague1.jpg",
              iconData: Icons.favorite_border,
              width: width,
              height: height,
              left: left),
          CardImageWithFabIcon(
              pathImage: "assets/img/ibague2.jpg",
              iconData: Icons.favorite_border,
              width: width,
              height: height,
              left: left),
          CardImageWithFabIcon(
              pathImage: "assets/img/ibague3.jpeg",
              iconData: Icons.favorite_border,
              width: width,
              height: height,
              left: left),
          CardImageWithFabIcon(
              pathImage: "assets/img/ibague4.jpg",
              iconData: Icons.favorite_border,
              width: width,
              height: height,
              left: left),
          CardImageWithFabIcon(
              pathImage: "assets/img/ibague5.jpg",
              iconData: Icons.favorite_border,
              width: width,
              height: height,
              left: left)
        ],
      ),
    );
  }
}
