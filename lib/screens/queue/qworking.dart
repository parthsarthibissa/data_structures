import 'dart:collection';
import 'package:data_structures/components/drawer.dart';
import 'package:data_structures/components/header.dart';
import 'package:data_structures/components/mybutton.dart';
import 'package:data_structures/components/textStyle.dart';
import 'package:data_structures/config/Sizing/SizingConfig.dart';
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
        enqenable = false;
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
    DeviceSizeConfig()..init(context);
    return SafeArea(
      child: Scaffold(
        drawer: MyAppDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(title: 'Queue Working'),
              FittedBox(
                child: Row(
                  children: [
                    Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        width: DeviceSizeConfig.blockSizeHorizontal * 30,
                        height: DeviceSizeConfig.blockSizeVertical * 20,
                        alignment: Alignment.center,
                        child: MyTextStyle(
                          text: 'FRONT = ' + front.toString(),
                          color: Colors.black,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.lightGreenAccent[100],
                            Colors.lightBlueAccent[100]
                          ]),
                          shape: BoxShape.rectangle,
                        )),
                    Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        width: DeviceSizeConfig.blockSizeHorizontal * 30,
                        height: DeviceSizeConfig.blockSizeVertical * 20,
                        alignment: Alignment.center,
                        child: MyTextStyle(
                          text: 'REAR = ' + rear.toString(),
                          color: Colors.black,
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.lightGreenAccent[100],
                              Colors.lightBlueAccent[100]
                            ]),
                            shape: BoxShape.rectangle)),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: DeviceSizeConfig.screenWidth,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.lightBlueAccent[100]]),
                  shape: BoxShape.rectangle,
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyButton(
                          onPressed: enqenable ? () => enq(c) : null,
                          text: 'ENQUEUE',
                        ),
                        MyButton(
                            onPressed: deqenable ? () => deq() : null,
                            text: 'DEQUEUE'),
                      ],
                    ),
                    MyButton(
                        onPressed: () => {clearQueue()}, text: 'Clear Queue'),
                  ],
                ),
              ),
              SizedBox(height: 10),
              MyTextStyle(
                text: 'MAX SIZE OF QUEUE = 5\n',
              ),
              MyTextStyle(
                text: 'QUEUE = ' + q.toString(),
              ),
              MyTextStyle(
                text: fullmessage,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
