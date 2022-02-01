import 'package:data_structures/components/basepage.dart';
import 'package:data_structures/components/mybutton.dart';
import 'package:flutter/material.dart';

class QueueScreen extends StatefulWidget {
  @override
  _QueueScreenState createState() => _QueueScreenState();
}

class _QueueScreenState extends State<QueueScreen> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Queue',
      image: Image.asset(
        'assets/Queue.png',
        scale: 2,
        fit: BoxFit.cover,
      ),
      dsaData:
          '''Queue is an abstract data structure, somewhat similar to Stacks. Unlike stacks, a queue is open at both its ends. One end is always used to insert data (enqueue) and the other is used to remove data (dequeue). Queue follows First-In-First-Out methodology, i.e., the data item stored first will be accessed first.

Queue in Real-World
A real-world example of queue can be a single-lane one-way road, where the vehicle enters first, exits first. More real-world examples can be seen as queues at the ticket windows and bus-stops.

Queue Implementation
As in stacks, a queue can also be implemented using Arrays, Linked-lists, Pointers and Structures. For the sake of simplicity, we shall implement queues using one-dimensional array.''',
      button: MyButton(
        onPressed: () {
         Navigator.of(context).popAndPushNamed('/qworking');
        },
        text: 'Working Of Queue',
      ),
    );
  }
}
