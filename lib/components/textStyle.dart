import 'package:data_structures/config/Sizing/SizingConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle extends StatelessWidget {
  final String? text;
  final double? size;
  final String? bold;
  final Color? color;
  const MyTextStyle({@required this.text, this.bold, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.openSans(
          fontSize: DeviceSizeConfig.safeBlockVertical! * 2.1,
          letterSpacing: 1,
          color: color,
          fontWeight: bold == 'yes' ? FontWeight.bold : FontWeight.normal),
    );
  }
}
