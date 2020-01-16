import 'package:flutter/material.dart';
import 'package:trips_tolima/header_profile.dart';

import 'card_image_list_profile.dart';

class ProfileTrips extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        HeaderProfile(),
        CardImageListProfile()
      ],
    );
  }

}