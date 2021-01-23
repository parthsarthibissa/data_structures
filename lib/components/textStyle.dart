import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle extends StatelessWidget {
  final String text;

  final String bold;
  final Color color;
  const MyTextStyle({@required this.text, this.bold, this.color});

  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()..init(context);
    return Text(
      text,
      style: GoogleFonts.openSans(
          fontSize: scaler.getTextSize(15),
          letterSpacing: 1,
          color: color,
          fontWeight: bold == 'yes' ? FontWeight.bold : FontWeight.normal),
    );
  }
}
