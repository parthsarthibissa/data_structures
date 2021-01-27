import 'package:data_structures/components/basepage.dart';
import 'package:data_structures/components/mybutton.dart';

import 'package:flutter/material.dart';

class LinkedListData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'LinkedList',
      button: MyButton(
          onPressed: () =>
              {Navigator.of(context).popAndPushNamed('/LLworking')},
          text: 'Working of LinkedList'),
      dsaData:
          '''A linked list is a sequence of data structures, which are connected together via links.

Linked List is a sequence of links which contains items. Each link contains a connection to another link. Linked list is the second most-used data structure after array. Following are the important terms to understand the concept of Linked List.

Link − Each link of a linked list can store a data called an element.

Next − Each link of a linked list contains a link to the next link called Next.

LinkedList − A Linked List contains the connection link to the first link called First.

Linked List Representation
Linked list can be visualized as a chain of nodes, where every node points to the next node.


Linked List contains a link element called first.

Each link carries a data field(s) and a link field called next.

Each link is linked with its next link using its next link.

Last link carries a link as null to mark the end of the list.''',
      image: Image.asset('assets/Linkedlist.png'),
    );
  }
}
