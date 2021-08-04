import 'package:data_structures/components/mybutton.dart';
import 'package:data_structures/config/Sizing/SizingConfig.dart';
import 'package:flutter/material.dart';
import 'package:data_structures/components/textStyle.dart';
import 'package:data_structures/components/drawer.dart';

import 'package:data_structures/components/header.dart';
import 'dart:collection';

import 'package:get/get.dart';

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
        fullmessage = '';
        addresspart = '';
      }
    });
    return 'Deleted';
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
              Header(title: 'LinkedList Working'),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        width: DeviceSizeConfig.blockSizeHorizontal * 30,
                        height: DeviceSizeConfig.blockSizeVertical * 20,
                        alignment: Alignment.center,
                        child: MyTextStyle(
                          text: datapart == null ? 'Null' : datapart,
                          color: Colors.black,
                        ),
                        decoration: BoxDecoration(
                            color: Get.isDarkMode ? Colors.white : Colors.black,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Colors.lightBlueAccent[100],
                                width: 6,
                                style: BorderStyle.solid))),
                    MyTextStyle(
                      text: '=>',
                    ),
                    Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        width: DeviceSizeConfig.blockSizeHorizontal * 30,
                        height: DeviceSizeConfig.blockSizeVertical * 20,
                        alignment: Alignment.center,
                        child: MyTextStyle(
                          text: addresspart,
                          color: Colors.black,
                        ),
                        decoration: BoxDecoration(
                            color: Get.isDarkMode ? Colors.white : Colors.black,
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Colors.lightBlueAccent[100],
                                width: 6,
                                style: BorderStyle.solid))),
                  ],
                ),
              ),
              Container(
                width: DeviceSizeConfig.screenWidth,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyButton(
                      onPressed: () => {insbeg(a)},
                      text: 'Insert At Beginning',
                    ),
                    MyButton(
                      text: 'Insert At End',
                      onPressed: () => {insend(a)},
                    ),
                    MyButton(
                      onPressed:
                          delbegenable == true ? () => {delebeg()} : null,
                      text: 'Delete At Beginning',
                    ),
                    MyButton(
                      onPressed: delbegenable == true ? () => {delend()} : null,
                      text: 'Delete At End',
                    ),
                    MyButton(
                      text: 'Clear Linked List',
                      onPressed: () => {clearLinkedList()},
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    padding: EdgeInsets.all(10),
                    child: MyTextStyle(
                      text: 'MAX LIMIT OF LINKEDLIST = 7',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: MyTextStyle(
                      text: 'LINKED LIST = $list',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: MyTextStyle(
                      text: '$fullmessage',
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
