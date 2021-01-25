import 'package:data_structures/components/drawer.dart';
import 'package:data_structures/components/header.dart';
import 'package:data_structures/components/textStyle.dart';

import 'package:data_structures/config/ThemeConfig.dart';
import 'package:data_structures/screens/linkedlist/linkedlistcomp.dart';
import 'package:data_structures/screens/linkedlist/linkedlistdata.dart';
import 'package:data_structures/screens/linkedlist/linkedlistworking.dart';
import 'package:data_structures/screens/queue/queue.dart';
import 'package:data_structures/screens/queue/queuecomp.dart';
import 'package:data_structures/screens/queue/qworking.dart';
import 'package:data_structures/screens/settings/appsettings.dart';
import 'package:data_structures/screens/splashscreen.dart';
import 'package:data_structures/screens/stack/stack.dart';
import 'package:data_structures/screens/stack/stackcomp.dart';
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
      '/scomp': (_) => StackComp(),
      '/queue': (_) => QueueScreen(),
      '/qworking': (_) => QWorkingScreen(),
      '/qcomp': (_) => QueueComp(),
      '/splash': (_) => SplashScreen(),
      '/LLdata': (_) => LinkedListData(),
      '/LLworking': (_) => LinkedListWorking(),
      '/LLcomp': (_) => LinkedListComp(),
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
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            drawer: MyAppDrawer(),
            body: SingleChildScrollView(
                child: Column(
              children: [
                Header(
                  title: 'Data Structures And Algorithms',
                ),
                MyTextStyle(
                  text: 'Welcome!',
                ),
              ],
            ))));
  }
}
