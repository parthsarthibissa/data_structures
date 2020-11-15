import 'package:data_structures/components/textStyle.dart';
import 'package:flutter/material.dart';

class MyAppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        UserAccountsDrawerHeader(
            accountName: MyTextStyle(text: 'Data Structures And Algorithms'),
            accountEmail: MyTextStyle(text: 'Version 1.0')),
        ListTile(
          title: MyTextStyle(
            text: 'Stack',
            size: 20,
          ),
          onTap: () {
            return Navigator.of(context).pushNamed('/stack');
          },
        ),
        ListTile(
          title: MyTextStyle(
            text: 'Queue',
            size: 20,
          ),
          onTap: () {
            return Navigator.of(context).pushNamed('/queue');
          },
        ),
        ListTile(
          title: MyTextStyle(
            text: 'Linked List',
            size: 20,
          ),
          onTap: () {
            return Navigator.of(context).pushNamed('/linked');
          },
        )
      ],
    ));
  }
}
