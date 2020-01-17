import 'package:flutter/material.dart';
import 'package:trips_tolima/place/model/place.dart';

import 'card_image_profile.dart';

class CardImageListProfile extends StatelessWidget {
  Place place = new Place(
      'Knuckles Mountains Range',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '123,123,123');
  Place place2 = new Place(
      'Mountains',
      'Hiking. Water fall hunting. Natural bath',
      'Scenery & Photography',
      '321,321,321');
  Place place3 = new Place('Plazoleta de los artesanos',
      'Lugar muy bonito de Ibagué', 'Scenery & Photography', '28594');
  Place place4 = new Place('Estadio Manuel Murillo', 'La casa del glorioso',
      'Scenery & Photography', '1500');
  Place place5 = new Place(
      'El Salado', 'Un luego para relajarse', 'Scenery & Photography', '4587');

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.only(top: 300, left: 20, right: 20),
      height: (MediaQuery.of(context).size.height),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CardImageProfile("assets/img/ibague1.jpg", place),
          CardImageProfile("assets/img/ibague2.jpg", place2),
          CardImageProfile("assets/img/ibague3.jpeg", place3),
          CardImageProfile("assets/img/ibague4.jpg", place4),
          CardImageProfile("assets/img/ibague5.jpg", place5)
        ],
      ),
    ));
  }
}
