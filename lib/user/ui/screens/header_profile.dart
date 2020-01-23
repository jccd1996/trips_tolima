import 'dart:io';

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trips_tolima/place/ui/screens/add_place_screen.dart';
import 'package:trips_tolima/user/bloc/bloc_user.dart';
import 'package:trips_tolima/user/model/user.dart';
import 'package:trips_tolima/user/ui/widgets/button_profile.dart';
import 'package:trips_tolima/user/ui/widgets/gradient_profile.dart';
import 'package:trips_tolima/user/ui/widgets/info_profile.dart';

class HeaderProfile extends StatelessWidget {
  UserBloc userBloc;
  User user;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);

    final double sizeIcon = 25.0;
    // Icon tag = Icon(Icons.turned_in_not, size: sizeIcon);
    Icon changePassword = Icon(Icons.vpn_key, size: sizeIcon);
    Icon plus = Icon(Icons.add_circle, size: sizeIcon);
    Icon exitApp = Icon(Icons.exit_to_app, size: sizeIcon);
    // Icon user = Icon(Icons.person, size: sizeIcon);

    // final bTag = Container(
    //   child: ButtonProfile(tag,sizeIcon),
    //   margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 200.0),
    // );

    final bChangePassword = Container(
      child: ButtonProfile(changePassword, sizeIcon, () => {}),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 200.0),
    );
    final bPlus = Container(
      child: ButtonProfile(plus, sizeIcon, () {
        ImagePicker.pickImage(source: ImageSource.camera).then((File image) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      AddPlaceScreen(image: image)));
        }).catchError((onError) => print(onError));
      }),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 200.0),
    );
    final bCloseSession = Container(
      child: ButtonProfile(exitApp, sizeIcon, () => {userBloc.signOut()}),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 200.0),
    );
    //final bUser = Container(
    //   child: ButtonProfile(user,sizeIcon),
    //    margin: const EdgeInsets.only(left: 10.0, right: 10.0,bottom: 200.0),
    //  );

    final optionsProfile = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        //  bTag,
        bChangePassword,
        bPlus,
        bCloseSession,
        //  bUser
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
