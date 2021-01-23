import 'dart:collection';

import 'package:data_structures/components/drawer.dart';
import 'package:data_structures/components/header.dart';
import 'package:data_structures/components/mybutton.dart';
import 'package:data_structures/components/textStyle.dart';
import 'package:data_structures/config/SizeConfig.dart';
import 'package:data_structures/constants.dart';
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
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      drawer: MyAppDrawer(),
      body: Column(
        children: [
          Header(size: size, title: 'Stack Working'),
          Expanded(
            child: SizedBox(
              height: SizeConfig.screenHeight - 50,
              width: SizeConfig.screenWidth - 50,
              child: ListView(
                padding: EdgeInsets.all(appPadding),
                children: [
                  Container(
                      width: 150,
                      height: 150,
                      alignment: Alignment.center,
                      child: MyTextStyle(
                        text: 'TOP -> ' + top.toString(),
                        size: 20,
                      ),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.lightGreenAccent[100],
                            Colors.lightBlueAccent[100]
                          ]),
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.lightBlueAccent[100],
                              width: 6,
                              style: BorderStyle.solid))),
                  SizedBox(height: 10),
                  Container(
                    width: SizeConfig.screenWidth,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.lightBlueAccent[100]]),
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyButton(
                          onPressed: pushenable ? () => push(c) : null,
                          text: 'PUSH',
                        ),
                        MyButton(
                          onPressed: popenable ? () => pop() : null,
                          text: 'POP',
                        ),
                        MyButton(
                          onPressed: () {
                            clearStack();
                          },
                          text: 'Clear Stack',
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
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
                        size: 15,
                      )
                    ],
                  ),
                  MyButton(
                    onPressed: () {
                      return Navigator.of(context).pushNamed('/scomp');
                    },
                    text: 'Applications And Complexity',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
