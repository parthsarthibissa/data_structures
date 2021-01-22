import 'package:data_structures/constants.dart';
import 'package:flutter/material.dart';
import 'package:data_structures/components/drawer.dart';
import 'package:data_structures/components/header.dart';
import 'package:data_structures/components/textStyle.dart';

class AppSettings extends StatefulWidget {
  @override
  _AppSettingsState createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            drawer: MyAppDrawer(),
            body: SingleChildScrollView(
                child: Column(
              children: [
                Header(
                  size: size,
                  title: 'Data Structures And Algorithms',
                ),
                MyTextStyle(
                  text: 'Settings',
                  size: 20,
                  bold: true,
                ),
                Divider(
                  color: Colors.lightBlueAccent[100],
                  thickness: 1,
                ),
                Container(
                    width: size.width,
                    padding: EdgeInsets.all(appPadding),
                    alignment: Alignment.centerLeft,
                    child: MyTextStyle(
                      text: 'Theme Mode',
                      bold: true,
                    )),
                Switch(value: false, onChanged: null),
                Switch(value: false, onChanged: null),
                Container(
                    width: size.width,
                    padding: EdgeInsets.all(appPadding),
                    alignment: Alignment.centerLeft,
                    child: MyTextStyle(
                      text: 'Fonts',
                      bold: true,
                    )),
                RaisedButton(onPressed: null),
                RaisedButton(onPressed: null),
                RaisedButton(onPressed: null),
                RaisedButton(onPressed: null),
              ],
            ))));
  }
}
