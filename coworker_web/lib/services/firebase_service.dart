


import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coworker_web/globals.dart';
import 'package:coworker_web/services/auth_servise.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  final FirebaseFirestore _fb = FirebaseFirestore.instance;

  addUserToFirebase()async{
    User? user = AuthServise().getCurrentUser();
    var doc = await _fb.collection("users").add({
      "gmail":user?.email,
      "image":user?.photoURL,
      "profiles":[],
    });
    await _fb.collection("users").doc(doc.id).update({"link":doc.id});    
    FirebaseUserLink=doc.id;  
  }

}