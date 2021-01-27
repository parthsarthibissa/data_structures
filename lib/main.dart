import 'package:data_structures/components/drawer.dart';
import 'package:data_structures/components/header.dart';
import 'package:data_structures/components/textStyle.dart';
import 'package:data_structures/config/ThemeConfig.dart';
import 'package:data_structures/screens/linkedlist/linkedlistdata.dart';
import 'package:data_structures/screens/linkedlist/linkedlistworking.dart';
import 'package:data_structures/screens/queue/queue.dart';

import 'package:data_structures/screens/queue/qworking.dart';
import 'package:data_structures/screens/settings/appsettings.dart';
import 'package:data_structures/screens/splashscreen.dart';
import 'package:data_structures/screens/stack/stack.dart';

import 'package:data_structures/screens/stack/working.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(GetMaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    title: 'Data Structure and Algorithms',
    theme: ThemeConfig.light,
    darkTheme: ThemeConfig.dark,
    routes: {
      '/home': (_) => HomePage(),
      '/stack': (_) => StackScreen(),
      '/working': (_) => WorkingScreen(),
      '/queue': (_) => QueueScreen(),
      '/qworking': (_) => QWorkingScreen(),
      '/splash': (_) => SplashScreen(),
      '/LLdata': (_) => LinkedListData(),
      '/LLworking': (_) => LinkedListWorking(),
      '/settings': (_) => AppSettings()
    },
    initialRoute: '/splash',
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: MyAppDrawer(),
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Header(
                      title: 'Data Structures And Algorithms',
                    ),
                    Image.asset('assets/images.png'),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: MyTextStyle(
                        text:
                            '''The data structure name indicates itself that organizing the data in memory. There are many ways of organizing the data in the memory as we have already seen one of the data structures, i.e., array in C language. Array is a collection of memory elements in which data is stored sequentially, i.e., one after another. In other words, we can say that array stores the elements in a continuous manner. This organization of data is done with the help of an array of data structures. There are also other ways to organize the data in memory. Let's see the different types of data structures.

The data structure is not any programming language like C, C++, java, etc. It is a set of algorithms that we can use in any programming language to structure the data in the memory.

The following are the advantages of a data structure:

=> Efficiency: If the choice of a data structure for implementing a particular ADT is proper, it makes the program very efficient in terms of time and space.

=> Reusability: he data structures provide reusability means that multiple client programs can use the data structure.

=> Abstraction: The data structure specified by an ADT also provides the level of abstraction. The client cannot see the internal working of the data structure, so it does not have to worry about the implementation part. The client can only see the interface.''',
                      ),
                    ),
                  ],
                ))));
  }
}
