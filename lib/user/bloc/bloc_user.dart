

import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_tolima/user/repository/auth_repository.dart';

class UserBloc implements Bloc {

  final _authRepository = AuthRepository();

  //Flujo de datos - streams
  //Stream de firebase
  //StreamController
  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;



  //Casos de uso
  //1. SignIn a la aplicación con Google

  Future<FirebaseUser> signIn(){
    return _authRepository.signInFirebase();
  }

  signOut() {
    _authRepository.signOut();
  }

  @override
  void dispose() {

  }
}