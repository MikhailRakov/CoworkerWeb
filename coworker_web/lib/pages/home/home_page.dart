import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false,
        title: AutoSizeText("C O W O R K E R"),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          color: Colors.black54,
          child: Text("ss"),//LoginDiolog(),
        ),
      ),
    );
  }
}
