import 'dart:developer';

import 'package:coworker_web/services/auth_servise.dart';
import 'package:flutter/material.dart';

class ChatViewWidget extends StatelessWidget {
  const ChatViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
   
    return SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            height:MediaQuery.of(context).size.height ,              
            child: Card(
              child: Text(AuthServise().getCurrentUser()?.email ?? "sssss"),
            ),
          );
  }
}