import 'package:flutter/material.dart';

massageSnackBar(context, String mass, Color color, double nHeight) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      dismissDirection: DismissDirection.up,
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 1),
      backgroundColor: Colors.red.withAlpha(0),
      margin: EdgeInsets.only(
        bottom: nHeight,
      ),
      content: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
              color: color.withOpacity(0.8),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              mass,
              textAlign: TextAlign.center,
            ),
          )),
      elevation: 0,
    ),
  );
}