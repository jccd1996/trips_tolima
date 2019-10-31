import 'package:flutter/material.dart';
import 'package:trips_tolima/gradient_profile.dart';
import 'package:trips_tolima/info_profile.dart';

class HeaderProfile extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientProfile("Perfíl"),
        InfoProfile()
      ],
    );
  }

}