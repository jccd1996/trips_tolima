import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trips_tolima/place/model/place.dart';
import 'package:trips_tolima/place/ui/widgets/card_image.dart';
import 'package:trips_tolima/place/ui/widgets/card_image_profile.dart';
import 'package:trips_tolima/user/model/user.dart';
import 'package:trips_tolima/user/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(User user) =>
      _cloudFirestoreAPI.updateUserData(user);

  Future<void> updatePlaceData(Place place) =>
      _cloudFirestoreAPI.updatePlaceData(place);

  List<CardImageProfile> buildMyPlaces(
          List<DocumentSnapshot> placesListSnapshot) =>
      _cloudFirestoreAPI.buildMyPlaces(placesListSnapshot);

  List<CardImageWithFabIcon> buildPlaces(
          List<DocumentSnapshot> placesListSnapshot) =>
      _cloudFirestoreAPI.buildPlaces(placesListSnapshot);
}
