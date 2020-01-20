import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_tolima/user/bloc/bloc_user.dart';
import 'package:trips_tolima/user/model/user.dart';
import 'package:trips_tolima/user/ui/widgets/button_profile.dart';
import 'package:trips_tolima/user/ui/widgets/user_info.dart';


class InfoProfile extends StatelessWidget{

  UserBloc userBloc;
  String pathImage = "assets/img/user.png";
  String name = "Camilo Cubillos";
  String email = "jccd1996@hotmail.com";
  double marginTopPhoto = 125.0;

//  User user;
//  InfoProfile(this.user);

  @override
  Widget build(BuildContext context) {

    userBloc = BlocProvider.of<UserBloc>(context);

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
           // image: NetworkImage(user.photoURL)
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


    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.active:
            return showProfileData(snapshot, photo);
          case ConnectionState.done:
            return showProfileData(snapshot, photo);
        }
      },
    );
  }

  Widget showProfileData(AsyncSnapshot snapshot, Widget photo){
    User user;
    if (!snapshot.hasData || snapshot.hasError){
      print("No logueado");
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircularProgressIndicator(),
          Text("No se pudo cargar la información. Haz login")
        ],
      );
    } else {
      print("Logueado");
      print(snapshot.data);
      user = User (
          name: snapshot.data.displayName,
          email: snapshot.data.email,
          photoURL: snapshot.data.photoUrl);
      return UserInfo(user);
    }
  }

}