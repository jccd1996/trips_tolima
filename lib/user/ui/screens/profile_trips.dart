import 'package:flutter/material.dart';
import 'package:trips_tolima/user/ui/screens/header_profile.dart';

import '../../../place/ui/widgets/card_image_list_profile.dart';

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