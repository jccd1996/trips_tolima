import 'package:flutter/material.dart';
import 'package:trips_tolima/floating_action_button_green.dart';

class CardImageProfile extends StatelessWidget {
  String pathImage = "assets/img/ibague1.jpg";

  CardImageProfile(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final card = Center(
        child: Container(
            alignment: Alignment(0.0, 0.0),
            height: 300.0,
            width: 400,
            margin: EdgeInsets.only(
              top: 60.0,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(pathImage)),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.rectangle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 7.0))
                ])));
    final buttonFav = Container(
      child: FloatingActionButtonGreen(),
      alignment: Alignment(0.9, 0.0),
    );
    final title = new Text(
      'Knucles Mountains',
      textAlign: TextAlign.start,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );

    final textDescription = Container(
        margin: EdgeInsets.only(top: 10.0),
        child: new Text(
          'Es una breve descripcion de esta cosa que hace mas cosas',
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 13, color: Colors.grey.withOpacity(0.8)),
        ));

    final steps = Container(
        margin: EdgeInsets.only(top: 5.0),
        child: new Text(
          'Steps: 23260',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 18, color: Colors.orangeAccent.withOpacity(0.8)),
        ));

    final description = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title,
        textDescription,
        steps,
        buttonFav
      ],
    );

    final cardContainer = Center(
      child: Container(
          alignment: Alignment(-1.0, 0.0),
          height: 160.0,
          width: 250,
          padding: const EdgeInsets.only(left: 15, top: 15),
          margin: EdgeInsets.only(top: 300.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              shape: BoxShape.rectangle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black38,
                    blurRadius: 15.0,
                    offset: Offset(0.0, 7.0))
              ]),
          child: description),
    );

    final cardDescription = Column(
      children: <Widget>[cardContainer],
    );

    return Stack(
      children: <Widget>[
        card,
        cardDescription,
      ],
    );
  }
}
