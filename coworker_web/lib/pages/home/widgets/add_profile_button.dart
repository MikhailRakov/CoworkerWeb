import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coworker_web/services/auth_service.dart';
import 'package:coworker_web/widgets/message_snak_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddProfileButton extends StatefulWidget {
  const AddProfileButton({super.key});

  @override
  State<AddProfileButton> createState() => _AddProfileButtonState();
}

class _AddProfileButtonState extends State<AddProfileButton> {
  @override
  Widget build(BuildContext context) {
    String? key;
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      
      width: MediaQuery.of(context).size.width*0.1,
      child: Align(
        alignment: Alignment.centerRight,
        child: ElevatedButton(
            onPressed: () async{
              log("message");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
            ),
            child: Text("Add Profile",
                style: Theme.of(context).textTheme.bodySmall!.copyWith())),
      ),
    );
  }
}