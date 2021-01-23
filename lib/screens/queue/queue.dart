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
      image: Image.asset('assets/Queue.png'),
      dsaData:
          'Queue is an abstract data structure.A queue is open at both its ends. One end is always used to insert data (enqueue) and the other is used to remove data (dequeue).\nQueue follows First-In-First-Out methodology, i.e., the data item stored first will be accessed first.\nQueue has two main operations enqueue and dequeue. Enqueue is used to insert elements inside queue and dequeue is used to remove elements from queue.',
      button: MyButton(
        onPressed: () {
          return Navigator.of(context).pushNamed('/qworking');
        },
        text: 'Working Of Queue',
      ),
    );
  }
}
