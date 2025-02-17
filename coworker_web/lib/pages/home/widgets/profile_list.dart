import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coworker_web/globals.dart';
import 'package:flutter/material.dart';

class ProfileListWidget extends StatelessWidget {
  const ProfileListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.height,
      child: Card(
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("users")
                  .doc(FirebaseUserLink)
                  .snapshots(),
              builder: (context,snap){
                if(snap.hasData){
                  return Text("1");

                }
                else return CircularProgressIndicator.adaptive();
              })),
    );
  }
}
