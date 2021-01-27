import 'package:data_structures/components/drawer.dart';
import 'package:data_structures/components/header.dart';
import 'package:data_structures/components/textStyle.dart';

import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({this.dsaData, this.button, this.image, @required this.title});

  final Widget button;
  final String dsaData;
  final Image image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: MyAppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              title: title,
            ),
            image,
            Container(
              padding: EdgeInsets.all(20),
              child: MyTextStyle(
                text: dsaData,
              ),
            ),
            button,
            Divider(),
          ],
        ),
      ),
    ));
  }
}
