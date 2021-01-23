import 'dart:collection';
import 'package:data_structures/components/drawer.dart';
import 'package:data_structures/components/header.dart';
import 'package:data_structures/components/mybutton.dart';
import 'package:data_structures/components/textStyle.dart';
import 'package:data_structures/config/SizeConfig.dart';
import 'package:data_structures/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class QWorkingScreen extends StatefulWidget {
  @override
  _QWorkingScreenState createState() => _QWorkingScreenState();
}

class _QWorkingScreenState extends State<QWorkingScreen> {
  int c = 1;
  TextEditingController controller;
  bool deqenable = false;
  bool enqenable = true;
  int rear, front;
  final q = Queue<dynamic>();
  String fullmessage = '';
  String emptymessage = '';
  void initState() {
    super.initState();
    rear = -1;
    front = -1;
    deqenable = false;
    enqenable = true;
  }

  int enq(int a) {
    q.add(a);
    setState(() {
      if (q.length == 5) {
        fullmessage = 'Queue Overflow !!';
        emptymessage = '';
        enqenable = false;
      } else if (front == -1 && rear == -1) {
        front = 1;
        c = c + 1;
        fullmessage = '';
        emptymessage = '';
        rear = 1;
        deqenable = false;
      } else {
        rear = rear + 1;
        c = c + 1;
        fullmessage = '';
        emptymessage = '';

        deqenable = true;
      }
    });
    return rear;
  }

  int deq() {
    q.removeFirst();
    setState(() {
      if (front > rear) {
        enqenable = true;
        emptymessage = 'Queue Underflow !!';
        fullmessage = 'Oops! front>rear ';
        front = -1;
        rear = -1;
        q.clear();
        deqenable = false;
      } else {
        fullmessage = '';
        emptymessage = '';
        enqenable = true;
        front = front + 1;
      }
    });
    return rear;
  }

  int clearQueue() {
    q.clear();
    setState(() {
      enqenable = true;
      deqenable = false;
      front = -1;
      rear = -1;
      c = 1;
      fullmessage = '';
      emptymessage = '';
    });
    return rear;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: MyAppDrawer(),
        body: Column(
          children: [
            Header(size: size, title: 'Queue Working'),
            FittedBox(
              child: Row(
                children: [
                  Container(
                      width: 500,
                      height: 500,
                      alignment: Alignment.center,
                      child: MyTextStyle(
                        text: 'FRONT -> ' + front.toString(),
                        color: Colors.black,
                      ),
                      margin: EdgeInsets.all(100),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.lightGreenAccent[100],
                          Colors.lightBlueAccent[100]
                        ]),
                        shape: BoxShape.circle,
                      )),
                  Container(
                      width: 500,
                      height: 500,
                      alignment: Alignment.center,
                      child: MyTextStyle(
                        text: 'REAR -> ' + rear.toString(),
                        color: Colors.black,
                      ),
                      margin: EdgeInsets.all(100),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.lightGreenAccent[100],
                          Colors.lightBlueAccent[100]
                        ]),
                        shape: BoxShape.circle,
                      )),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.lightBlueAccent[100]]),
                shape: BoxShape.rectangle,
              ),
              padding: EdgeInsets.all(appPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    onPressed: enqenable ? () => enq(c) : null,
                    text: 'ENQUEUE',
                  ),
                  MyButton(
                      onPressed: deqenable ? () => deq() : null,
                      text: 'DEQUEUE'),
                  MyButton(
                      onPressed: () {
                        clearQueue();
                      },
                      text: 'CLEAR QUEUE'),
                ],
              ),
            ),
            SizedBox(height: 10),
            MyTextStyle(
              text: 'MAX SIZE OF QUEUE -> 5\n',
            ),
            MyTextStyle(
              text: 'CURRENT SIZE -> ' + q.length.toString() + '\n',
            ),
            MyTextStyle(
              text: 'QUEUE -> ' + q.toString(),
            ),
            SizedBox(height: 10),
            RaisedButton(
              onPressed: () {
                return Navigator.of(context).pushNamed('/qcomp');
              },
              color: Colors.lightGreenAccent[100],
              child: MyTextStyle(text: 'Applications And Complexity of Queue'),
            )
          ],
        ),
      ),
    );
  }
}
