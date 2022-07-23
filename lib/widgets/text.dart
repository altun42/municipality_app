import 'package:flutter/material.dart';

class Texts {
  Widget topText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
