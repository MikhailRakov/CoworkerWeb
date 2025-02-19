// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:coworker_web/globals.dart';
import 'package:coworker_web/services/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coworker_web/services/firebase_service.dart';
import 'package:coworker_web/services/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginDiolog extends StatelessWidget {
   LoginDiolog({super.key});  

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.3,
          child: Card(
            child: Center(
              child: IconButton.outlined(
                onPressed: () async {
                  try {
                    await AuthService().signInWithGoogle();
                  } catch (e) {
                    log(e.toString());
                    return;
                  }
                  await FirebaseFirestore.instance
                      .collection("users")
                      .where("gmail",
                          isEqualTo: AuthService().getCurrentUser()?.email)
                      .get()
                      .then(
                    (snap) {
                      var s = snap.docs;
                      if (s.isEmpty) {
                        FirebaseService().addUserToFirebase();
                        
                        Navigator.of(context).pushNamed('home');
                      } else {                        
                        firebaseUserLink=s[0].data()['link'];
                        log(firebaseUserLink);
                        PrefService().createCache(firebaseUserLink);
                        Navigator.of(context).pushNamed('home');
                      }
                    },
                  );
                },
                icon: Image.network("lib/assets/google-logo.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
