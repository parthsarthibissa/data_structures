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
                bold: 'yes',
              ),
              accountEmail: MyTextStyle(
                text: 'Version 1.2',
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
                ),
                onTap: () {
                  return Navigator.popAndPushNamed(context, '/LLdata');
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
                  text: 'App Settings',
                ),
                onTap: () {
                  return Navigator.popAndPushNamed(context, '/settings');
                },
              )),
        ],
      ),
    );
  }
}
