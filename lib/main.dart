import 'package:data_structures/components/drawer.dart';
import 'package:data_structures/components/textStyle.dart';
import 'package:data_structures/screens/linkedlist/linkedlist.dart';
import 'package:data_structures/screens/linkedlist/linkwork.dart';

import 'package:data_structures/screens/queue/queue.dart';
import 'package:data_structures/screens/queue/queuecomp.dart';
import 'package:data_structures/screens/queue/qworking.dart';
import 'package:data_structures/screens/stack/stack.dart';
import 'package:data_structures/screens/stack/stackcomp.dart';
import 'package:data_structures/screens/stack/working.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/home': (_) => HomePage(),
        '/stack': (_) => StackScreen(),
        '/working': (_) => WorkingScreen(),
        '/scomp': (_) => StackComp(),
        '/queue': (_) => QueueScreen(),
        '/qworking': (_) => QWorkingScreen(),
        '/qcomp': (_) => QueueComp(),
        '/linked': (_) => LinkedListScreen(),
        '/llwork': (_) => LinkedListWorking()
      },
      initialRoute: '/home',
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: MyTextStyle(
        text: 'Data Structures And Algorithms',
      )),
      drawer: MyAppDrawer(),
      body: Center(
          child: MyTextStyle(
        text: 'Welcome',
        size: 50,
      )),
    );
  }
}
