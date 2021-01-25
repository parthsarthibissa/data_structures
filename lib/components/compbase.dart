import 'package:data_structures/components/drawer.dart';
import 'package:data_structures/components/header.dart';
import 'package:data_structures/components/textStyle.dart';
import 'package:data_structures/constants.dart';
import 'package:flutter/material.dart';

class BaseComp extends StatelessWidget {
  final String title;
  final String application;
  final String complex;

  const BaseComp({this.title, this.application, this.complex});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: MyAppDrawer(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Header(title: 'Applications of ' + title),
                Container(
                  padding: EdgeInsets.all(20),
                  child: MyTextStyle(
                    text: title + '\n',
                  ),
                ),
                MyTextStyle(text: application),
                MyTextStyle(text: complex),
                Divider(),
              ],
            ),
          )),
    );
  }
}
