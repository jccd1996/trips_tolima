import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_tolima/place/ui/screens/home_trips.dart';
import 'package:trips_tolima/platzi_trips_cupertino.dart';
import 'package:trips_tolima/user/bloc/bloc_user.dart';
import 'package:trips_tolima/user/ui/screens/profile_trips.dart';
import 'package:trips_tolima/place/ui/screens/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {
  int indexTap = 0;
  //TODO revisar el bloc de profile trips
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    BlocProvider<UserBloc>(
      bloc: UserBloc(),
      child: ProfileTrips(),
    )
    //ProfileTrips()
  ];

  void onTapTapped(int index){
    setState(() {
       indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
//      Con Cupertino
//      bottomNavigationBar: PlatziTripsCupertino(),

  //    Con Material Design
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("")),
          ],
        ),
      ),
    );
  }
}
