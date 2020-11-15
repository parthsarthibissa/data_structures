import 'dart:collection';

import 'package:data_structures/components/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WorkingScreen extends StatefulWidget {
  @override
  _WorkingScreenState createState() => _WorkingScreenState();
}

class _WorkingScreenState extends State<WorkingScreen> {
  int c = 1;
  TextEditingController controller;
  bool popenable = false;
  bool pushenable = true;
  final s = Queue<dynamic>();
  String fullmessage = '';
  String emptymessage = '';
  int top;

  void initState() {
    super.initState();
    top = -1;
    popenable = false;
    pushenable = true;
    fullmessage = '';
  }

  int push(int a) {
    s.add(a);
    print(s);
    setState(() {
      top = a;
      c = c + 1;
      if (s.length == 5) {
        pushenable = false;
        fullmessage = 'Stack Overflow !!';
      }
      if (top != 1) {
        popenable = true;
      }
    });
    print(c);
    return top;
  }

  int pop() {
    s.removeLast();
    setState(() {
      top = s.last;
      pushenable = true;
      fullmessage = '';
      if (top == -1 || top == 1) {
        popenable = false;
        c = 2;
      }
      print(s);
    });
    return top;
  }

  int clearStack() {
    s.clear();
    setState(() {
      top = -1;
      c = 1;
      popenable = false;
      pushenable = true;
      fullmessage = '';
    });
    return top;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: MyTextStyle(text: 'Stack'),
          centerTitle: true,
        ),
        body: SizedBox(
          child: Column(
            children: [
              Container(
                  width: 150,
                  height: 150,
                  alignment: Alignment.center,
                  child: MyTextStyle(
                    text: 'TOP -> ' + top.toString(),
                    size: 20,
                  ),
                  margin: EdgeInsets.all(100),
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.blue,
                          width: 6,
                          style: BorderStyle.solid))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    onPressed: pushenable ? () => push(c) : null,
                    child: MyTextStyle(text: 'PUSH'),
                  ),
                  RaisedButton(
                    onPressed: popenable ? () => pop() : null,
                    child: MyTextStyle(text: 'POP'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      clearStack();
                    },
                    child: MyTextStyle(text: 'Clear Stack'),
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
                    text: 'MAX SIZE OF STACK -> 5\n',
                    size: 20,
                  ),
                  MyTextStyle(
                    text: 'CURRENT SIZE -> ' + s.length.toString() + '\n',
                    size: 20,
                  ),
                  MyTextStyle(
                    text: 'STACK -> ' + s.toString(),
                    size: 20,
                  ),
                  MyTextStyle(
                    text: fullmessage,
                    fontColor: Colors.red,
                    size: 15,
                  )
                ],
              ),
              RaisedButton(
                onPressed: () {
                  return Navigator.of(context).pushNamed('/scomp');
                },
                child: MyTextStyle(text: 'Applications And Complexity'),
              )
            ],
          ),
        ));
  }
}
