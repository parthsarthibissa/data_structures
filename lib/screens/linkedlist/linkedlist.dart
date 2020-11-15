import 'package:data_structures/components/basepage.dart';
import 'package:flutter/material.dart';
class LinkedListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return BasePage(
      appBarTitle: 'Linked List',
      dsaTitle: 'Linked List',
      dsaData: ' A linked list is a linear data structure, in which the elements are not stored at contiguous memory locations.\n\nAll the elements have data node and pointer node.\n\nThe Data node contains data and Pointer node points to the next node.\n\nThe elements in a linked list are linked using pointers as shown in the image.',
      image: Image.network('https://media.geeksforgeeks.org/wp-content/cdn-uploads/gq/2013/03/Linkedlist.png'), 
      button: RaisedButton(
          elevation: 5,
          onPressed: () {
            return Navigator.of(context).pushNamed('/llwork');
          },
          child: Text('Working Of LinkedList'),
          color: Colors.blue),
    );
  }
}

