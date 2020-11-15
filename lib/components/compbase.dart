import 'package:data_structures/components/textStyle.dart';
import 'package:flutter/material.dart';

class BaseComp extends StatelessWidget {
  final String title;
  final String application;
  final String complex;

  const BaseComp({this.title, this.application, this.complex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          color: Colors.amber,
          child: ListView(children: [
            MyTextStyle(
              text: title + '\n',
              size: 40,
            ),
            MyTextStyle(text: application, size: 20),
            MyTextStyle(text: complex, size: 20),
          ]),
        ));
  }
}
