import 'package:flutter/material.dart';

import 'card_image_profile.dart';

class CardImageListProfile extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return
      Center(
          child: Container(
            margin: const EdgeInsets.only(top: 300,left: 20,right: 20),
            height: (MediaQuery.of(context).size.height),

            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                CardImageProfile("assets/img/ibague1.jpg"),
                CardImageProfile("assets/img/ibague2.jpg"),
                CardImageProfile("assets/img/ibague3.jpeg"),
                CardImageProfile("assets/img/ibague4.jpg"),
                CardImageProfile("assets/img/ibague5.jpg")
              ],
            ),
          )
      );

  }

}