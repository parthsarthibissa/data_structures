import 'package:data_structures/components/textStyle.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,
      child: ListView(
        children: [
          IconButton(
            icon: Icon(Icons.close),
            color: Get.isDarkMode ? Colors.white : Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
              accountName: MyTextStyle(
                text: 'Data Structures And Algorithms',
                bold: 'yes',
                color: Get.isDarkMode ? Colors.black : Colors.white,
              ),
              accountEmail: MyTextStyle(
                  text: 'Version 1.2',
                  color: Get.isDarkMode ? Colors.black : Colors.white)),
          Container(
              decoration: BoxDecoration(
                  color: Get.isDarkMode ? Colors.white : Colors.black),
              child: ListTile(
                title: MyTextStyle(
                    text: 'HomeScreen',
                    color: Get.isDarkMode ? Colors.black : Colors.white),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/home');
                },
              )),
          SizedBox(height: 5),
          Container(
              decoration: BoxDecoration(
                  color: Get.isDarkMode ? Colors.white : Colors.black),
              child: ListTile(
                title: MyTextStyle(
                    text: 'Stack',
                    color: Get.isDarkMode ? Colors.black : Colors.white),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/stack');
                },
              )),
          SizedBox(height: 5),
          Container(
              decoration: BoxDecoration(
                  color: Get.isDarkMode ? Colors.white : Colors.black),
              child: ListTile(
                title: MyTextStyle(
                    text: 'Queue',
                    color: Get.isDarkMode ? Colors.black : Colors.white),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/queue');
                },
              )),
          SizedBox(height: 5),
          Container(
              decoration: BoxDecoration(
                  color: Get.isDarkMode ? Colors.white : Colors.black),
              child: ListTile(
                title: MyTextStyle(
                    text: 'LinkedList',
                    color: Get.isDarkMode ? Colors.black : Colors.white),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/LLdata');
                },
              )),
          SizedBox(height: 5),
          Container(
              decoration: BoxDecoration(
                  color: Get.isDarkMode ? Colors.white : Colors.black),
              child: ListTile(
                title: MyTextStyle(
                    text: 'App Settings',
                    color: Get.isDarkMode ? Colors.black : Colors.white),
                onTap: () {
                  Navigator.popAndPushNamed(context, '/settings');
                },
              )),
        ],
      ),
    );
  }
}
