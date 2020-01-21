import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_tolima/user/bloc/bloc_user.dart';
import 'package:trips_tolima/user/model/user.dart';
import 'package:trips_tolima/user/ui/widgets/button_profile.dart';
import 'package:trips_tolima/user/ui/widgets/user_info.dart';


class InfoProfile extends StatelessWidget{

  UserBloc userBloc;
  double marginTopPhoto = 125.0;


  @override
  Widget build(BuildContext context) {

    userBloc = BlocProvider.of<UserBloc>(context);

    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        switch(snapshot.connectionState){
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.active:
            return showProfileData(snapshot);
          case ConnectionState.done:
            return showProfileData(snapshot);
        }
      },
    );
  }

  Widget showProfileData(AsyncSnapshot snapshot){
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