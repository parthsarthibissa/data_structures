import 'dart:collection';

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
  int top;

  void initState() {
    super.initState();
    top = -1;
    popenable = false;
    pushenable = true;
  }

  int push(int a) {
    s.add(a);
    print(s);
    setState(() {
      top = a;
      c = c + 1;
      if (s.length == 5) {
        pushenable = false;
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
    });
    return top;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
          centerTitle: true,
        ),
        body: SizedBox(
          child: Column(
            children: [
              Container(
                  width: 200,
                  height: 200,
                  alignment: Alignment.center,
                  child: Text(
                    'TOP -> ' + top.toString(),
                    style: TextStyle(fontSize: 25),
                  ),
                  margin: EdgeInsets.all(100),
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      shape: BoxShape.rectangle,
                      border: Border.all(
                          color: Colors.blue,
                          width: 6,
                          style: BorderStyle.solid))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    onPressed: pushenable ? () => push(c) : null,
                    child: Text('PUSH'),
                  ),
                  RaisedButton(
                    onPressed: popenable ? () => pop() : null,
                    child: Text('POP'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      clearStack();
                    },
                    child: Text('Clear Stack'),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('MAX SIZE OF STACK -> 5\n',style: TextStyle(fontSize: 20),),
                  Text('CURRENT SIZE -> ' + s.length.toString() + '\n',style: TextStyle(fontSize: 20),),
                  Text(
                    'STACK -> ' + s.toString(),
                    style: TextStyle(fontSize: 20),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
