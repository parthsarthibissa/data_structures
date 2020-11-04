import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    @required this.appBarTitle,
    this.dsaData,
    this.dsaTitle,
    this.button,
  });

  final String appBarTitle;
  final String dsaData;
  final String dsaTitle;
  final Widget button;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
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
            dsaTitle + '\n',
            style:
                TextStyle(fontSize: 40, decoration: TextDecoration.underline),
          ),
          Text(dsaData, style: TextStyle(fontSize: 30)),
          button
        ]),
      ),
    );
  }
}
