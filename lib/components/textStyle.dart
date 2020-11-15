import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle extends StatelessWidget {
  final String text;
  final double size;
  final Color fontColor;
  const MyTextStyle({@required this.text, this.size, this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, color: fontColor),
    );
  }
}
