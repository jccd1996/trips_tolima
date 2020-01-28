import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trips_tolima/user/model/user.dart';

class UserInfo extends StatelessWidget {
  User user;

  UserInfo(@required this.user);

  @override
  Widget build(BuildContext context) {

    final userName = Container(
      margin: EdgeInsets.only(
          top: 125.0,
          left: 20.0
      ),

      child: Text(
        user.name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 20.0,
            fontFamily: "Lato",
            color: Colors.white
        ),
      ),
    );
    print(user.name);

    final userEmail = Container(
      margin: EdgeInsets.only(
          top: 2,
          left: 20.0
      ),

      child: Text(
        user.email,
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
          top: 125.0,
          left: 25.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit:BoxFit.cover,
            //  image: AssetImage(pathImage)
              image: NetworkImage(user.photoURL)
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

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        photo,
        userDetail
        //optionsProfile
      ],
    );
  }
}
