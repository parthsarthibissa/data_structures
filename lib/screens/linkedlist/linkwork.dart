import 'package:data_structures/components/textStyle.dart';
import 'package:flutter/material.dart';

class LinkedListWorking extends StatefulWidget {
  @override
  _LinkedListWorkingState createState() => _LinkedListWorkingState();
}

class Node {
  int data;
  Node next;
}

class _LinkedListWorkingState extends State<LinkedListWorking> {
  @override
  int c = 1;
  bool insertenable = true;
  bool deleteenable = true;
  Node start;
  int linkData;
  int nextAdd;
  String emptymessage = '';
  void initState() {
    super.initState();
    start = null;
  }

  int insertbeg(int a) {
    var newNode = Node();
    newNode.next = null;
    newNode.data = a;

    if (start == null) {
      start = newNode;
    } else {
      newNode.next = start;
      start = newNode;
    }
    setState(() {
      linkData = newNode.data;
      nextAdd = 100;
    });
    return a;
  }

  int insertend(int a) {
    var newNode = Node();
    newNode.next = null;
    newNode.data = a;

    if (start == null) {
      start = newNode;
    } else {
      Node ptr;
      ptr = start;
      while (ptr.next != null) {
        ptr = ptr.next;
      }
      ptr.next = newNode;
      newNode.next = null;
    }
    setState(() {
      linkData = newNode.data;
      nextAdd = null;
    });
    return a;
  }

  int insertafter(int a) {
    return a;
  }

  int insertbefore(int a) {
    return a;
  }

  void deletebeg() {}

  void deleteend() {}

  void deletebefore() {}

  void deleteafter() {}

  void clearList() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: MyTextStyle(text: 'Linked List'),
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
                          text: 'DATA = ' + linkData.toString(),
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
                    MyTextStyle(
                      text: '<=>',
                      size: 70,
                      fontColor: Colors.amber,
                    ),
                    Container(
                        width: 500,
                        height: 500,
                        alignment: Alignment.center,
                        child: MyTextStyle(
                          text: 'NEXT = ' + nextAdd.toString(),
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
              MyTextStyle(
                text: 'Scrollable Options',
                size: 20,
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                  controller: ScrollController(keepScrollOffset: true),
                  children: [
                    RaisedButton(
                      onPressed: insertenable ? () => insertbeg(c) : null,
                      child: MyTextStyle(text: 'INSERT BEGINNING'),
                    ),
                    RaisedButton(
                      onPressed: insertenable ? () => insertend(c) : null,
                      child: MyTextStyle(text: 'INSERT END'),
                    ),
                    RaisedButton(
                      onPressed: insertenable ? () => insertafter(c) : null,
                      child: MyTextStyle(text: 'INSERT AFTER'),
                    ),
                    RaisedButton(
                      onPressed: insertenable ? () => insertbefore(c) : null,
                      child: MyTextStyle(text: 'INSERT BEFORE'),
                    ),
                    RaisedButton(
                      onPressed: deleteenable ? () => deletebeg() : null,
                      child: MyTextStyle(text: 'DELETE BEGINNING'),
                    ),
                    RaisedButton(
                      onPressed: deleteenable ? () => deleteend() : null,
                      child: MyTextStyle(text: 'DELETE END'),
                    ),
                    RaisedButton(
                      onPressed: deleteenable ? () => deletebefore() : null,
                      child: MyTextStyle(text: 'DELETE BEFORE'),
                    ),
                    RaisedButton(
                      onPressed: deleteenable ? () => deleteafter() : null,
                      child: MyTextStyle(text: 'DELETE AFTER'),
                    ),
                    RaisedButton(
                      onPressed: () {
                        clearList();
                      },
                      child: MyTextStyle(text: 'CLEAR LINKED LIST'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MyTextStyle(
                    text: 'LINKED LIST -> ',
                    size: 18,
                  ),
                  MyTextStyle(
                    text: '\n' + emptymessage + '\n',
                    size: 15,
                    fontColor: Colors.red,
                  )
                ],
              ),
              RaisedButton(
                onPressed: null,
                child: MyTextStyle(
                    text: 'APPLICATIONS AND COMPLEXITY OF LINKED LIST'),
              )
            ],
          ),
        ));
  }
}
