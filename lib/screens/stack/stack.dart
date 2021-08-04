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
        image: Image.asset(
          'assets/Stack.png',
          scale: 2,
          fit: BoxFit.cover,
        ),
        dsaData:
            '''A stack is an Abstract Data Type (ADT), commonly used in most programming languages. It is named stack as it behaves like a real-world stack, for example – a deck of cards or a pile of plates, etc.

Stack in Real-Wprld
A real-world stack allows operations at one end only. For example, we can place or remove a card or plate from the top of the stack only. Likewise, Stack ADT allows all data operations at one end only. At any given time, we can only access the top element of a stack.

This feature makes it LIFO data structure. LIFO stands for Last-in-first-out. Here, the element which is placed (inserted or added) last, is accessed first. In stack terminology, insertion operation is called PUSH operation and removal operation is called POP operation.

Stack Implementation
A stack can be implemented by means of Array, Structure, Pointer, and Linked List. Stack can either be a fixed size one or it may have a sense of dynamic resizing. Here, we are going to implement stack using arrays, which makes it a fixed size stack implementation.''',
        button: MyButton(
          onPressed: () {
            return Navigator.of(context).popAndPushNamed('/working');
          },
          text: 'Working Of Stack',
        ));
  }
}
