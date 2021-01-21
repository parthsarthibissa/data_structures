import 'package:data_structures/components/textStyle.dart';

import 'package:flutter/material.dart';

class MyAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,
      child: ListView(
        children: [
          IconButton(
            icon: Icon(Icons.close),
            color: Colors.lightGreen[200],
            onPressed: () => Navigator.pop(context),
          ),
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.lightBlueAccent[200],
                Colors.lightGreenAccent[200]
              ])),
              accountName: MyTextStyle(
                text: 'Data Structures And Algorithms',
                fontColor: Colors.black87,
              ),
              accountEmail: MyTextStyle(
                text: 'Version 1.1',
                fontColor: Colors.black87,
              )),
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.lightBlueAccent[200],
                Colors.lightGreenAccent[200]
              ])),
              child: ListTile(
                title: MyTextStyle(
                  text: 'HomeScreen',
                  size: 20,
                ),
                onTap: () {
                  return Navigator.popAndPushNamed(context, '/home');
                },
              )),
          SizedBox(height: 5),
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.lightBlueAccent[200],
                Colors.lightGreenAccent[200]
              ])),
              child: ListTile(
                title: MyTextStyle(
                  text: 'Stack',
                  size: 20,
                ),
                onTap: () {
                  return Navigator.popAndPushNamed(context, '/stack');
                },
              )),
          SizedBox(height: 5),
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.lightBlueAccent[200],
                Colors.lightGreenAccent[200]
              ])),
              child: ListTile(
                title: MyTextStyle(
                  text: 'Queue',
                  size: 20,
                ),
                onTap: () {
                  return Navigator.popAndPushNamed(context, '/queue');
                },
              )),
          SizedBox(height: 5),
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.lightBlueAccent[200],
                Colors.lightGreenAccent[200]
              ])),
              child: ListTile(
                title: MyTextStyle(
                  text: 'LinkedList',
                  size: 20,
                ),
                onTap: () {
                  return Navigator.popAndPushNamed(context, '/LLdata');
                },
              )),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
