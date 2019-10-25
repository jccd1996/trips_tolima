import 'package:flutter/material.dart';
import 'package:trips_tolima/card_image_list.dart';
import 'package:trips_tolima/gradient_back.dart';


class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido"),
        CardImageList()
      ],
    );
  }

}