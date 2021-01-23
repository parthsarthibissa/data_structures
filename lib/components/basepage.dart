import 'package:data_structures/components/drawer.dart';
import 'package:data_structures/components/header.dart';
import 'package:data_structures/components/textStyle.dart';
import 'package:data_structures/config/SizeConfig.dart';
import 'package:data_structures/constants.dart';
import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({this.dsaData, this.button, this.image, @required this.title});

  final Widget button;
  final String dsaData;
  final Image image;
  final String title;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      drawer: MyAppDrawer(),
      body: Column(
        children: [
          Header(
            size: size,
            title: title,
          ),
          image,
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(appPadding),
            children: [
              MyTextStyle(text: dsaData, size: 18.5),
            ],
          )),
          button,
          Divider(),
        ],
      ),
    ));
  }
}
