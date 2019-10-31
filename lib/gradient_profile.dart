import 'package:flutter/material.dart';

class GradientProfile extends StatelessWidget{
  String title = "Perfíl";
  GradientProfile(this.title);

  @override
  Widget build(BuildContext context) {

    final profile = Container(
        margin: EdgeInsets.only(left: 25.0),
       child: Text(
         title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold
          ),
        )
    );



    final iconSettings = Container(
      margin: EdgeInsets.only(
        top: 2, left: 230.0),
      child: Icon(
        Icons.settings,
        color: Colors.white38,
        size: 15.0,
      ),
    );

    final userDetail = Row(
      children: <Widget>[
        profile,
        iconSettings
      ],
    );

    return Container(
      height: 400.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF4268D3),
                Color(0xFF584CD1),
              ],
              begin: FractionalOffset(0.2,0.0),
              end: FractionalOffset(1.0,0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
          )
      ),

      child: userDetail,

      alignment: Alignment(-0.80,-0.6),
    );
  }
}