import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trips_tolima/profile_trips.dart';
import 'package:trips_tolima/search_trips.dart';

import 'home_trips.dart';

class PlatziTripsCupertino extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: Colors.indigo ,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("")
              ),
            ]
        ),

        // ignore: missing_return
        tabBuilder: (BuildContext context, int index) {
          // ignore: missing_return
          switch (index) {
            case 0:
              // ignore: missing_return
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              // ignore: missing_return
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              // ignore: missing_return
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              // ignore: missing_return
              break;
          }
        },
      ),
    );
  }
}