import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginDiolog extends StatelessWidget {
  const LoginDiolog({super.key});

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
                onPressed: () {
                  Navigator.of(context).pushNamed('home');
                },
                icon: Icon(CupertinoIcons.airplane),
                //child: AutoSizeText("data")
              ),
            ),
          ),
        ),
      ),
    );
  }
}
