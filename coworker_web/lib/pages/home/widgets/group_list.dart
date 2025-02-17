import 'package:flutter/material.dart';

class GroupsListWidget extends StatelessWidget {
  const GroupsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.15,
      height: MediaQuery.of(context).size.height,
      child: Card(        
        child: Text("data"),
      ),
    );
  }
}