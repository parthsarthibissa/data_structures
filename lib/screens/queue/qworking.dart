import 'dart:collection';
import 'package:data_structures/components/textStyle.dart';
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
    return Scaffold(
        appBar: AppBar(
          title: MyTextStyle(text: 'Queue'),
          centerTitle: true,
        ),
        body: SizedBox(
          child: Column(
            children: [
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 500,
                        height: 500,
                        alignment: Alignment.center,
                        child: MyTextStyle(
                          text: 'FRONT -> ' + front.toString(),
                          size: 50,
                        ),
                        margin: EdgeInsets.all(100),
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.blue,
                                width: 6,
                                style: BorderStyle.solid))),
                    Container(
                        width: 500,
                        height: 500,
                        alignment: Alignment.center,
                        child: MyTextStyle(
                          text: 'REAR -> ' + rear.toString(),
                          size: 50,
                        ),
                        margin: EdgeInsets.all(100),
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.blue,
                                width: 6,
                                style: BorderStyle.solid))),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    onPressed: enqenable ? () => enq(c) : null,
                    child: MyTextStyle(text: 'ENQUEUE'),
                  ),
                  RaisedButton(
                    onPressed: deqenable ? () => deq() : null,
                    child: MyTextStyle(text: 'DEQUEUE'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      clearQueue();
                    },
                    child: MyTextStyle(text: 'Clear Queue'),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyTextStyle(
                    text: 'MAX SIZE OF QUEUE -> 5\n',
                    size: 20,
                  ),
                  MyTextStyle(
                    text: 'CURRENT SIZE -> ' + q.length.toString() + '\n',
                    size: 20,
                  ),
                  MyTextStyle(
                    text: 'QUEUE -> ' + q.toString(),
                    size: 20,
                  ),
                  MyTextStyle(
                    text: '\n' + fullmessage + emptymessage + '\n',
                    fontColor: Colors.red,
                    size: 15,
                  )
                ],
              ),
              RaisedButton(
                onPressed: () {
                  return Navigator.of(context).pushNamed('/qcomp');
                },
                child:
                    MyTextStyle(text: 'Applications And Complexity of Queue'),
              )
            ],
          ),
        ));
  }
}
