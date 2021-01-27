import 'package:data_structures/components/mybutton.dart';

import 'package:flutter/material.dart';
import 'package:data_structures/components/drawer.dart';
import 'package:data_structures/components/header.dart';
import 'package:data_structures/components/textStyle.dart';
import 'package:get/get.dart';

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
                  title: 'Data Structures And Algorithms',
                ),
                MyTextStyle(
                  text: 'Settings ',
                  bold: 'yes',
                ),
                Divider(
                  color: Colors.lightBlueAccent[100],
                  thickness: 1,
                ),
                Container(
                    width: size.width,
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: MyTextStyle(
                      text: 'Theme Mode',
                      bold: 'yes',
                    )),
                Container(
                  width: size.width / 2,
                  child: Column(
                    children: [
                      MyButton(
                        text: 'Change Theme',
                        onPressed: () {
                          if (Get.isDarkMode) {
                            Get.changeThemeMode(ThemeMode.light);
                          } else {
                            Get.changeThemeMode(ThemeMode.dark);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ))));
  }
}
