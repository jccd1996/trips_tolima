import 'package:flutter/material.dart';
import 'package:trips_tolima/description_place.dart';

class Review extends StatelessWidget {

  String pathImage = "assets/img/user.png";
  String name = "Camilo Cubillos";
  String details = "1 review 5 photos";
  String comment = "Que ciudad tan bonita!!!";

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    final start_half = Container(
      margin: EdgeInsets.only(
          right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
        size: 13.0,
      ),
    );

    final start_borde = Container(
      margin: EdgeInsets.only(
          right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
        size: 13.0,
      ),
    );

    final start = Container(
      margin: EdgeInsets.only(
          right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFF2C611),
        size: 13.0,
      ),
    );


    final userName = Container(
       margin: EdgeInsets.only(
         left: 20.0
       ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato"
        ),
      ),
    );

    final userInfo = Row(
      children: <Widget>[
         Container(
          margin: EdgeInsets.only(
            right: 5.0,
            left: 20.0
          ),

            child: Text(
              details,
              textAlign: TextAlign.left,
              style: TextStyle(
              fontSize: 13.0,
              fontFamily: "Lato",
              color: Color(0xFFa3a5a7)
                ),
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



    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0,
            fontFamily: "Lato",
          fontWeight: FontWeight.w900
        ),
      ),
    );



    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );



    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit:BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetail
      ],
    );
  }
}
