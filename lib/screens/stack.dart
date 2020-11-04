import 'package:data_structures/components/basepage.dart';
import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  @override
  _StackScreenState createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      appBarTitle: 'Stack',
      dsaTitle: 'Stack',
      dsaData:
          'A stack is an Abstract Data Type (ADT), commonly used in most programming languages.A real-world stack allows operations at one end only. For example, we can place or remove a card or plate from the top of the stack only.This feature makes it LIFO data structure.\nIn stack terminology, insertion operation is called PUSH operation and removal operation is called POP operation.',
      button: RaisedButton(
          elevation: 5,
          onPressed: () {
            return Navigator.of(context).pushNamed('/working');
          },
          child: Text('Working Of Stack'),
          color: Colors.blue),
    );
  }
}
