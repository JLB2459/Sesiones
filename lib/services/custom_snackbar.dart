import 'package:flutter/material.dart';

class CustomSnackBar {
  static GlobalKey<ScaffoldMessengerState> msgKey =
      GlobalKey<ScaffoldMessengerState>();
  static showSnackBar(String msg) {
    final snackBar = SnackBar(
      backgroundColor: Colors.green,
      content: Text(
        msg,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
    msgKey.currentState!.showSnackBar(snackBar);
  }
}
