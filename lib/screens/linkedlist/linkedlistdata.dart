import 'package:data_structures/components/basepage.dart';
import 'package:data_structures/components/textStyle.dart';
import 'package:flutter/material.dart';

class LinkedListData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'LinkedList',
      button: RaisedButton(
          color: Colors.lightGreenAccent[100],
          onPressed: () => {Navigator.of(context).pushNamed('/LLworking')},
          child: MyTextStyle(text: 'Working of LinkedList')),
      dsaData:
          '''Linked List is a sequence of links which contains items. Each link contains a connection to another link. Linked list is the second most-used data structure after array. Following are the important terms to understand the concept of Linked List.

1. Link − Each link of a linked list can store a data called an element.
2. Next − Each link of a linked list contains a link to the next link called Next.
3. LinkedList − A Linked List contains the connection link to the first link called First.''',
      image: Image.asset('assets/Linkedlist.png'),
    );
  }
}
