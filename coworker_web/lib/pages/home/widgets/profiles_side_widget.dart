import 'package:coworker_web/pages/home/widgets/add_profile_button.dart';
import 'package:coworker_web/pages/home/widgets/profile_list.dart';
import 'package:flutter/material.dart';

class ProfilesSideWidget extends StatelessWidget {
  const ProfilesSideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: 200,//MediaQuery.of(context).size.width * 0.1,
        height: 800,//MediaQuery.of(context).size.height*0.9,
        child: Card(
          child: Column(
            children: [
              AddProfileButton(),
              ProfileListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}