import 'package:flutter/material.dart';

class ThemeConfig {
  static final light = ThemeData.light().copyWith(
      backgroundColor: Colors.white, buttonColor: Colors.lightGreenAccent[100]);
  static final dark = ThemeData.dark().copyWith(
      backgroundColor: Colors.black87,
      buttonColor: Colors.lightBlueAccent[100]);
}
