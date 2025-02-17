import 'package:auto_size_text/auto_size_text.dart';
import 'package:coworker_web/pages/home/widgets/group_list.dart';
import 'package:coworker_web/pages/home/widgets/chat_view.dart';
import 'package:coworker_web/pages/home/widgets/profile_list.dart';
import 'package:coworker_web/services/auth_servise.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AutoSizeText("C O W O R K E R"),
        actions: [CircleAvatar(
          backgroundImage: NetworkImage(AuthServise().getCurrentUser()?.photoURL??""),
        )],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfileListWidget(),
          GroupsListWidget(),
          ChatViewWidget(),
        ],
      ),
    );
  }
}
