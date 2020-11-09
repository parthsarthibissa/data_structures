import 'package:flutter/material.dart';

class MyAppDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        UserAccountsDrawerHeader(accountName: null, accountEmail: null),
        ListTile(
          title: Text('Stack'),
          onTap: () {
            return Navigator.of(context).pushNamed('/stack');
          },
        ),
        ListTile(
          title: Text('Queue'),
          onTap: () {
            return Navigator.of(context).pushNamed('/queue');
          },
        )
      ],
    ));
  }
}
