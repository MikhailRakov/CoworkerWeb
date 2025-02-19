import 'package:auto_size_text/auto_size_text.dart';
import 'package:coworker_web/pages/home/widgets/group_list.dart';
import 'package:coworker_web/pages/home/widgets/chat_view.dart';
import 'package:coworker_web/pages/home/widgets/profile_list.dart';
import 'package:coworker_web/pages/home/widgets/profiles_side_widget.dart';
import 'package:coworker_web/services/auth_service.dart';
import 'package:coworker_web/services/shared_preferences.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AutoSizeText("C O W O R K E R"),
        actions: [Container(
          margin: EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(AuthService().getCurrentUser()?.photoURL??""),
          ),
        )],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfilesSideWidget(),
          GroupsListWidget(),
          ChatViewWidget(),
        ],
      ),
    );
  }
}
