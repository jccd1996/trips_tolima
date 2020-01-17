import 'package:flutter/material.dart';
import 'package:trips_tolima/widgets/button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int numberStarts;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.numberStarts, this.descriptionPlace);

  var descriptionText = "Ibagué es una ciudad muy bonita con un clima caliente";
  @override
  Widget build(BuildContext context) {

    final start_half = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );

    final start_borde = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );

    final start = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    final title_starts = Row(
      children: <Widget>[
        Container(

          margin: EdgeInsets.only(
              top: 320.0,
              left: 20.0,
              right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontFamily: "Lato"
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            start,
            start,
            start,
            start_half,
            start_borde
          ],
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(top: 20.0,left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 16.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
        textAlign: TextAlign.left,
      ),

    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_starts,
        description,
        ButtonPurple("Navigate")
      ],
    );
  }
}
