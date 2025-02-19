import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coworker_web/services/shared_preferences.dart';
import 'package:flutter/material.dart';

class ProfileListWidget extends StatefulWidget {
  const ProfileListWidget({super.key});

  @override
  State<ProfileListWidget> createState() => _ProfileListWidgetState();
}

class _ProfileListWidgetState extends State<ProfileListWidget> {
  String firebaseUserLink="";
  @override
  void initState() {
    // TODO: implement initState
    PrefService().readCache().then((val) {
      setState(() {
        firebaseUserLink = val;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //String userLink="";

    return SingleChildScrollView(
      child: SizedBox(
        child: Container(
          margin: EdgeInsets.only(top: 10,bottom: 10),
          height:200,
          width: MediaQuery.of(context).size.width,
          child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection("users")
                .doc(firebaseUserLink)
                .snapshots(),
            builder: (context, snap) {
              if (snap.hasData) {
                var profiles = snap.data?.data()?["profiles"];
                return ListView.builder(
                    itemCount: 100,//profiles.length,
                    itemBuilder: (context, index) {
                      return FutureBuilder(
                          future: FirebaseFirestore.instance
                              .collection("profiles")
                              .get(),
                          builder: (context, snap) {
                            return Text("data");
                          });
                    });
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
