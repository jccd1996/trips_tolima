import 'package:flutter/material.dart';
import 'package:trips_tolima/place/model/place.dart';

import 'card_image_profile.dart';

class CardImageListProfile extends StatelessWidget {
  Place place = Place(
      name: "Knuckles Mountains Range",
      description: "Hiking. Water fall hunting. Natural bath",
      urlImage: "https://images.unsplash.com/photo-1519681393784-d120267933ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
      likes: 3

  );
  Place place2 = Place(
      name: "Mountains",
      description: "Hiking. Water fall hunting. Natural bath', 'Scenery & Photography",
      urlImage: "https://images.unsplash.com/photo-1524654458049-e36be0721fa2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80",
      likes: 10

  );

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.only(top: 300, left: 20, right: 20),
      height: (MediaQuery.of(context).size.height),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CardImageProfile(place),
          CardImageProfile(place2),
//          CardImageProfile("assets/img/ibague3.jpeg", place3),
//          CardImageProfile("assets/img/ibague4.jpg", place4),
//          CardImageProfile("assets/img/ibague5.jpg", place5)
        ],
      ),
    ));
  }
}
