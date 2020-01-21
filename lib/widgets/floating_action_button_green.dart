import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  FloatingActionButtonGreen(
      {Key key, @required this.iconData, @required this.onPressed});

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  var isFavorite = false;
  IconData buttonIcon = Icons.favorite_border;

//  void onPressedFav() {
//    if (isFavorite) {
//      Scaffold.of(context).showSnackBar(SnackBar(
//        content: Text("Lo removiste de tus sitios favoritos"),
//      ));
//      setState(() {
//        buttonIcon = Icons.favorite_border;
//      });
//    } else {
//      Scaffold.of(context).showSnackBar(SnackBar(
//        content: Text("Agregaste a tus favoritos"),
//      ));
//      setState(() {
//        buttonIcon = Icons.favorite;
//      });
//    }
//    isFavorite = !isFavorite;
//  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: widget.onPressed,
      child: Icon(widget.iconData),
      heroTag: null,
    );
  }
}
