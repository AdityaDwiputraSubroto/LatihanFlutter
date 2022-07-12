import 'package:flutter/material.dart';

class ErrorN {
  static final messengerKey = GlobalKey<ScaffoldMessengerState>();
  static showsnackbar(String? text) {
    if (text == null)
      return null;
    else {
      final snackBar = SnackBar(
        content: Text(text),
        backgroundColor: Colors.red,
      );
      messengerKey.currentState!
        ..removeCurrentSnackBar()
        ..showSnackBar(snackBar);
    }
  }
}
