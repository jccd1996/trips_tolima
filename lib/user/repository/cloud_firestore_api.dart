import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trips_tolima/place/model/place.dart';
import 'package:trips_tolima/place/ui/widgets/card_image.dart';
import 'package:trips_tolima/place/ui/widgets/card_image_profile.dart';
import 'package:trips_tolima/user/model/user.dart';

class CloudFirestoreAPI {
  final String USERS = "users";
  final String PLACES = "places";
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final Firestore _db = Firestore.instance;

  void updateUserData(User user) async {
    print(user.toString());
    DocumentReference ref = _db.collection(USERS).document(user.uid);
    return await ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'myPlaces': user.myPlaces,
      'myFavoritelPlaces': user.myFavoritePlaces,
      'lastSignIn': DateTime.now()
    }, merge: true);
  }

  Future<void> updatePlaceData(Place place) async {
    CollectionReference refPlaces = _db.collection(PLACES);
    await _auth.currentUser().then((FirebaseUser user) {
      refPlaces.add({
        'name': place.name,
        'description': place.description,
        'likes': place.likes,
        'urlImage': place.urlImage,
        'userOwner': _db.document("$USERS/${user.uid}") //reference
      }).then((DocumentReference dr) {
        dr.get().then((DocumentSnapshot snapshot) {
          snapshot.documentID; //ID Place Referencia array
          DocumentReference refUsers = _db.collection(USERS).document(user.uid);
          refUsers.updateData(({
            'myPlaces': FieldValue.arrayUnion(
                [_db.document("$USERS/${snapshot.documentID}")])
          }));
        });
      });
    });
  }

  List<CardImageProfile> buildMyPlaces(
      List<DocumentSnapshot> placesListSnapshot) {
    List<CardImageProfile> profilePlaces = List<CardImageProfile>();
    placesListSnapshot.forEach((p) {
      Place place = Place(
          name: p.data['name'],
          description: p.data['description'],
          urlImage: p.data['urlImage'],
          likes: p.data['likes']);
      profilePlaces.add(CardImageProfile(place));
    });
    return profilePlaces;
  }

  List<CardImageWithFabIcon> buildPlaces(
      List<DocumentSnapshot> placesListSnapshot) {
    List<CardImageWithFabIcon> placesCard = List<CardImageWithFabIcon>();
    double width = 300;
    double height = 350;
    double left = 20;
    IconData iconData = Icons.favorite_border;

    placesListSnapshot.forEach((p) {
      placesCard.add(CardImageWithFabIcon(
        iconData: iconData,
        width: width,
        height: height,
        pathImage: p.data["urlImage"],
        onPressedFabIcon: () {
          likePlace(p.documentID);
        },
        left: left,
      ));
    });
    return placesCard;
  }

  Future likePlace(String idPlace) async {
    await _db.collection(PLACES).document(idPlace).get().then((DocumentSnapshot ds) {
      int likes = ds.data["likes"];

      _db.collection(PLACES).document(idPlace).updateData({
        'likes': likes+1
      });
    });
  }
}


