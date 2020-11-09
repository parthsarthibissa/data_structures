import 'package:flutter/material.dart';

class BaseComp extends StatelessWidget {
  final String title;
  final String application;
  final String complex;
  
  const BaseComp({this.title,this.application,this.complex});

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
          Text(
            title + '\n',
            style:
                TextStyle(fontSize: 40, decoration: TextDecoration.underline),
          ),
          Text(application, style: TextStyle(fontSize: 20)),
          Text(complex, style: TextStyle(fontSize: 20)),
        ]),
    ));
  }
}