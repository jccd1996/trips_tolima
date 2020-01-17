import 'package:flutter/material.dart';
import 'package:trips_tolima/user/ui/widgets/button_profile.dart';
import 'package:trips_tolima/place/ui/widgets/card_image_list.dart';
import 'package:trips_tolima/place/ui/widgets/card_image_list_profile.dart';
import 'package:trips_tolima/user/ui/widgets/gradient_profile.dart';
import 'package:trips_tolima/user/ui/widgets/info_profile.dart';

class HeaderProfile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final double sizeIcon = 25.0;
    Icon tag = Icon(Icons.turned_in_not, size: sizeIcon);
    Icon cardGift = Icon(Icons.card_giftcard, size: sizeIcon);
    Icon plus = Icon(Icons.add_circle, size: sizeIcon);
    Icon mail = Icon(Icons.mail, size: sizeIcon);
    Icon user = Icon(Icons.person, size: sizeIcon);


    final bTag = Container(
      child: ButtonProfile(tag,sizeIcon),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 200.0),
    );

    final bCardGift = Container(
      child: ButtonProfile(cardGift,sizeIcon),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 200.0),
    );
    final bPlus = Container(
      child: ButtonProfile(plus,sizeIcon),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 200.0),
    );
    final bMail = Container(
      child: ButtonProfile(mail,sizeIcon),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 200.0),
    );
    final bUser = Container(
      child: ButtonProfile(user,sizeIcon),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0,bottom: 200.0),
    );

    final optionsProfile = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        bTag,
        bCardGift,
        bPlus,
        bMail,
        bUser
      ],
    );

    return Stack(
      children: <Widget>[
        GradientProfile("Perfíl"),
        InfoProfile(),
        optionsProfile,
      ],
    );
  }
}
