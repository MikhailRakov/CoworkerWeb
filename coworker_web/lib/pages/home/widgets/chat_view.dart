import 'dart:developer';

import 'package:coworker_web/services/auth_service.dart';
import 'package:flutter/material.dart';

class ChatViewWidget extends StatelessWidget {
  const ChatViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
   
    return SizedBox(
            width: 1000,//MediaQuery.of(context).size.width * 0.6,
            height:1000,//MediaQuery.of(context).size.height ,              
            child: Card(
              child: Text(AuthService().getCurrentUser()?.email ?? "sssss"),
            ),
          );
  }
}