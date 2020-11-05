import 'package:data_structures/components/drawer.dart';

import 'package:data_structures/screens/stack/stack.dart';
import 'package:data_structures/screens/stack/working.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/home': (_) => HomePage(),
        '/stack': (_) => StackScreen(),
        '/working': (_) => WorkingScreen()
      },
      initialRoute: '/home',
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Structures And Algorithms'),
      ),
      drawer: MyAppDrawer(),
      body: Center(child: Text('Hello')),
    );
  }
}
