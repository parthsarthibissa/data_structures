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
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          drawer: MyAppDrawer(),
          body: Column(
            children: [
              Header(size: size, title: 'Applications of ' + title),
              Center(
                child: MyTextStyle(
                  text: title + '\n',
                  size: 30,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(appPadding),
                  child: ListView(children: [
                    MyTextStyle(text: application, size: 20),
                    MyTextStyle(text: complex, size: 20),
                  ]),
                ),
              ),
              Divider(),
            ],
          )),
    );
  }
}
