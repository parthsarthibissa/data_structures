import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle extends StatelessWidget {
  final String text;
  final double size;
  final String bold;
  final Color color;
  const MyTextStyle({@required this.text, this.size, this.bold, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          fontSize: size,
          letterSpacing: 1.2,
          color: color,
          fontWeight: bold == 'yes' ? FontWeight.bold : FontWeight.normal),
    );
  }
}
