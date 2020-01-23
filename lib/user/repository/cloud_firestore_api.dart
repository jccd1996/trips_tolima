import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:trips_tolima/place/model/place.dart';
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
    await _auth.currentUser().then((FirebaseUser user){
      refPlaces.add(
        {
          'name' : place.name,
          'description': place.description,
          'likes': place.likes,
          'userOwner': "$USERS/${user.uid}"//reference
        }
      );
    });


  }
}