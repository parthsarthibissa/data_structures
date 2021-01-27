import 'package:data_structures/components/basepage.dart';
import 'package:data_structures/components/mybutton.dart';
import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  @override
  _StackScreenState createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: 'Stack',
        image: Image.asset('assets/Stack.png'),
        dsaData:
            'A stack is an Abstract Data Type (ADT).This feature makes it LIFO data structure.\nIn stack terminology, insertion operation is called PUSH operation and removal operation is called POP operation.\nFor example, we can place or remove a card or plate from the top of the stack only',
        button: MyButton(
          onPressed: () {
            return Navigator.of(context).popAndPushNamed('/working');
          },
          text: 'Working Of Stack',
        ));
  }
}
