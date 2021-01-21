import 'package:data_structures/components/basepage.dart';
import 'package:data_structures/components/textStyle.dart';
import 'package:flutter/material.dart';

class LinkedListData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'LinkedList',
      button: RaisedButton(
          onPressed: () => {Navigator.of(context).pushNamed('/LLworking')},
          child: MyTextStyle(text: 'Working of LinkedList')),
      dsaData: 'Linked List is a widely used data structure',
      image: Image.asset('assets/Linkedlist.png'),
    );
  }
}
