import 'dart:developer';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServise {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //final FirebaseFirestore _db = FirebaseFirestore.instance;

  User? getCurrentUser() {
    //log(_firebaseAuth.currentUser.toString());

    return _firebaseAuth.currentUser;
  }

  Future<GoogleSignInAccount?> signOut() async {
    return await GoogleSignIn().signOut();
  }

  signInWithGoogle() async {
    final GoogleSignInAccount? gUser =
        await GoogleSignIn(scopes: ["profile", "email"]).signIn();

    if (gUser == null) return;

    try {
      final GoogleSignInAuthentication gAuth = await gUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );
      return await _firebaseAuth.signInWithCredential(credential);
    } catch (e) {
      log('error $e');
    }
  }
}