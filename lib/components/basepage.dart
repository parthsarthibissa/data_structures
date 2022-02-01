import 'package:data_structures/components/drawer.dart';
import 'package:data_structures/components/header.dart';
import 'package:data_structures/components/textStyle.dart';

import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({this.dsaData, this.button, this.image, @required this.title});

  final Widget? button;
  final String? dsaData;
  final Image? image;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: MyAppDrawer(),
            body: ListView(
              children: [
                Header(title: title!),
                SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      image!,
                      MyTextStyle(
                        text: dsaData!,
                      ),
                      button!,
                      Divider(),
                    ],
                  ),
                ),
              ],
            )));
  }
}
