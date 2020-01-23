import 'dart:io';

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_tolima/place/model/place.dart';
import 'package:trips_tolima/place/ui/widgets/card_image.dart';
import 'package:trips_tolima/place/ui/widgets/title_input_location.dart';
import 'package:trips_tolima/user/bloc/bloc_user.dart';
import 'package:trips_tolima/widgets/button_purple.dart';
import 'package:trips_tolima/widgets/gradient_back.dart';
import 'package:trips_tolima/widgets/text_input.dart';
import 'package:trips_tolima/widgets/title_header.dart';

class AddPlaceScreen extends StatefulWidget {
  File image;

  AddPlaceScreen({Key key, this.image});

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    final _controllerTitlePlace = TextEditingController();
    final _controllerDescription = TextEditingController();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(
            height: 300.0,
          ),
          Row(
            //App Bar
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(top: 25.0, left: 5.0),
                  child: SizedBox(
                    height: 45.0,
                    width: 45.0,
                    child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 45,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )),
              Flexible(
                child: Container(
                  padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 10.0),
                  child: TitleHeader(title: "Add a new place"),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 120, bottom: 20),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: CardImageWithFabIcon(
                    pathImage: widget.image.path,
                    //pathImage: "assets/img/ibague1.jpg",
                    iconData: Icons.camera_alt,
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 250,
                    left: 0,
                  ),
                ), //Foto
                Container(
                    //Textfield title
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: TextInput(
                      hintText: "Title",
                      inputType: null,
                      maxLines: 1,
                      controller: _controllerTitlePlace,
                    )),
                TextInput(
                  hintText: "Description",
                  inputType: TextInputType.multiline,
                  maxLines: 4,
                  controller: _controllerDescription,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextInputLocation(
                    hintText: "Add Location",
                    iconData: Icons.location_on,
                  ),
                ),
                Container(
                  width: 70,
                  child: ButtonPurple(
                    buttonText: "Add Place",
                    onPressed: () {
                      //1. Firebase Storage
                      // url -

                      //2. Cloud firestore
                      //Place - title, description, url, userOwner, likes

                      userBloc.updatePlaceData(Place(
                        name: _controllerTitlePlace.text,
                        description: _controllerDescription.text,
                        likes: 0,
                        
                      )).whenComplete((){
                        print("TERMINO");
                        Navigator.pop(context);
                      });
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
