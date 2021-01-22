import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle extends StatelessWidget {
  final String text;
  final double size;
  final Color fontColor;
  final bool bold;
  const MyTextStyle(
      {@required this.text, this.size, this.fontColor, this.bold = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          fontSize: size,
          color: fontColor,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal),
    );
  }
}
