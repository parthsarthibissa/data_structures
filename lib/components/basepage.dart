import 'package:data_structures/components/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BasePage extends StatelessWidget {
  const BasePage(
      {@required this.appBarTitle,
      this.dsaData,
      this.dsaTitle,
      this.button,
      this.image});

  final String appBarTitle;
  final String dsaData;
  final String dsaTitle;
  final Widget button;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle, style: GoogleFonts.openSans()),
        centerTitle: true,
        elevation: 5,
        shadowColor: Colors.amber,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        color: Colors.amber,
        child: ListView(children: [
          MyTextStyle(
            text: dsaTitle + '\n',
            size: 40,
          ),
          image,
          MyTextStyle(text: dsaData, size: 20),
          button
        ]),
      ),
    );
  }
}
