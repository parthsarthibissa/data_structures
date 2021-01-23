import 'package:data_structures/components/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:data_structures/components/textStyle.dart';
import 'package:data_structures/components/drawer.dart';
import 'package:data_structures/constants.dart';
import 'package:data_structures/components/header.dart';
import 'package:data_structures/config/SizeConfig.dart';
import 'dart:collection';

class LinkedListWorking extends StatefulWidget {
  @override
  _LinkedListWorkingState createState() => _LinkedListWorkingState();
}

class Linked extends LinkedListEntry<Linked> {
  final int id;
  Linked(this.id);

  @override
  String toString() {
    return '$id';
  }
}

class _LinkedListWorkingState extends State<LinkedListWorking> {
  String fullmessage = '';
  var list = LinkedList<Linked>();
  int a;
  String datapart = '';
  String addresspart = '';
  bool delbegenable;

  void initState() {
    a = 10;
    delbegenable = false;
    super.initState();
  }

  void adder() {
    a = a + 10;
  }

  String insbeg(a) {
    setState(() {
      if (list.length == 7) {
        fullmessage =
            'Sorry! Linked List is Full You cannot perform insert operation';
      } else {
        list.addFirst(Linked(a));
        adder();
        setDelbeg();
        datapart = list.first.toString();
        addresspart = list.first.next.toString();
      }
    });
    return 'Inserted';
  }

  String insend(a) {
    setState(() {
      if (list.length == 7) {
        fullmessage =
            'Sorry! Linked List is Full You cannot perform insert operation';
      } else {
        list.add(Linked(a));
        adder();
        setDelbeg();
        datapart = list.last.toString();
        addresspart = list.last.next.toString();
      }
    });
    return 'Inserted';
  }

  String setDelbeg() {
    if (list.length == 1) {
      delbegenable = false;
    } else {
      delbegenable = true;
    }
    return 'Done';
  }

  String delebeg() {
    setState(() {
      if (list.isEmpty) {
        fullmessage =
            'Sorry! Linked List is Empty You cannot perform delete operation';
        datapart = '';
        addresspart = '';
      } else {
        list.first.unlink();
        setDelbeg();
        datapart = list.first.toString();
        addresspart = list.first.next.toString();
      }
    });
    print(list.length);
    return 'Deleted';
  }

  String delend() {
    setState(() {
      if (list.isEmpty) {
        fullmessage =
            'Sorry! Linked List is Empty You cannot perform delete operation';
        datapart = '';
        addresspart = '';
      } else {
        list.last.unlink();
        setDelbeg();
        datapart = list.last.toString();
        addresspart = list.last.next.toString();
      }
    });
    return 'Deleted';
  }

  String clearLinkedList() {
    setState(() {
      if (list.isEmpty) {
        fullmessage = '';
        datapart = '';
        addresspart = '';
      } else {
        list.clear();
        delbegenable = false;
        datapart = '';
        addresspart = '';
      }
    });
    return 'Deleted';
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      drawer: MyAppDrawer(),
      body: Column(
        children: [
          Header(size: size, title: 'LinkedList Working'),
          Expanded(
            child: SizedBox(
              child: ListView(
                padding: EdgeInsets.all(appPadding),
                children: [
                  Container(
                    width: SizeConfig.screenHeight,
                    padding: EdgeInsets.all(appPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: SizeConfig.screenWidth / 3,
                            height: SizeConfig.screenHeight / 10,
                            alignment: Alignment.center,
                            child: MyTextStyle(
                              text: datapart == null ? 'Null' : datapart,
                              color: Colors.black,
                              size: 15,
                            ),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.lightGreenAccent[100],
                                  Colors.lightBlueAccent[100]
                                ]),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                    color: Colors.lightBlueAccent[100],
                                    width: 6,
                                    style: BorderStyle.solid))),
                        MyTextStyle(
                          text: '=>',
                          size: SizeConfig.screenWidth / 20,
                        ),
                        Container(
                            width: SizeConfig.screenWidth / 3,
                            height: SizeConfig.screenHeight / 10,
                            alignment: Alignment.center,
                            child: MyTextStyle(
                              text: addresspart,
                              size: 15,
                              color: Colors.black,
                            ),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.lightGreenAccent[100],
                                  Colors.lightBlueAccent[100]
                                ]),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                    color: Colors.lightBlueAccent[100],
                                    width: 6,
                                    style: BorderStyle.solid))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: SizeConfig.screenWidth,
                    padding: EdgeInsets.all(appPadding),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.lightBlueAccent[100]]),
                      shape: BoxShape.rectangle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyButton(
                              onPressed: () => {insbeg(a)},
                              text: 'Insert At Beginning',
                            ),
                            MyButton(
                              text: 'Insert At End',
                              onPressed: () => {insend(a)},
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyButton(
                              onPressed: delbegenable == true
                                  ? () => {delebeg()}
                                  : null,
                              text: 'Delete At Beginning',
                            ),
                            MyButton(
                              onPressed: delbegenable == true
                                  ? () => {delend()}
                                  : null,
                              text: 'Delete At End',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MyButton(
                              text: 'Clear Linked List',
                              onPressed: () => {clearLinkedList()},
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyTextStyle(
                        text: 'MAX LIMIT OF LINKEDLIST -> 7\n',
                        size: 18,
                      ),
                      MyTextStyle(
                        text: 'LINKED LIST -> $list\n',
                        size: 18,
                      ),
                      MyTextStyle(
                        text: '$fullmessage\n',
                        size: 15,
                      )
                    ],
                  ),
                  MyButton(
                    onPressed: () {
                      return Navigator.of(context).pushNamed('/LLcomp');
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
