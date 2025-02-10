import 'package:auto_size_text/auto_size_text.dart';
import 'package:coworker_web/pages/login/widgets/login_diolog.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText("C O W O R K E R"),
      ),
      body: Card(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            //color: Colors.black54,
            child: Card(
              color: Colors.black54,
              child: LoginDiolog(),
            ),
          ),
        ),
      ),
    );
  }
}
