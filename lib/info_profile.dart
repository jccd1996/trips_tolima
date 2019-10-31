import 'dart:ffi';

import 'package:flutter/material.dart';


class InfoProfile extends StatelessWidget{
  String pathImage = "assets/img/user.png";
  String name = "Camilo Cubillos";
  String email = "jccd1996@hotmail.com";
  double marginTopPhoto = 125.0;

  @override
  Widget build(BuildContext context) {
    var marginTopInfoUser = (marginTopPhoto + 20);

    final userName = Container(
      margin: EdgeInsets.only(
          top: marginTopInfoUser,
          left: 20.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 20.0,
            fontFamily: "Lato",
            color: Colors.white
        ),
      ),
    );

    final userEmail = Container(
      margin: EdgeInsets.only(
        top: 2,
          left: 20.0
      ),

      child: Text(
        email,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 15.0,
            fontFamily: "Lato",
            color: Colors.white38
        ),
      ),
    );

    final photo = Container(

      margin: EdgeInsets.only(
          top: marginTopPhoto,
          left: 25.0
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

    final userDetail = Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userEmail,
      ],
    );
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        photo,
        userDetail,
      ],
    );
  }

}