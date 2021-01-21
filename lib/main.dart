import 'package:data_structures/components/cards.dart';
import 'package:data_structures/components/drawer.dart';
import 'package:data_structures/components/header.dart';
import 'package:data_structures/components/textStyle.dart';
import 'package:data_structures/screens/linkedlist/linkedlistcomp.dart';
import 'package:data_structures/screens/linkedlist/linkedlistdata.dart';
import 'package:data_structures/screens/linkedlist/linkedlistworking.dart';
import 'package:data_structures/screens/queue/queue.dart';
import 'package:data_structures/screens/queue/queuecomp.dart';
import 'package:data_structures/screens/queue/qworking.dart';
import 'package:data_structures/screens/splashscreen.dart';
import 'package:data_structures/screens/stack/stack.dart';
import 'package:data_structures/screens/stack/stackcomp.dart';
import 'package:data_structures/screens/stack/working.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      title: 'Data Structure and Algorithms',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          })),
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
        '/LLcomp': (_) => LinkedListComp()
      },
      initialRoute: '/splash',
    ));

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
                  size: size,
                  title: 'Data Structures And Algorithms',
                ),
                Divider(),
                MyTextStyle(
                  text: 'Quotes Section',
                  size: 25,
                ),
                Divider(
                  color: Colors.lightBlue[200].withOpacity(1),
                  thickness: 2.5,
                ),
                Cardshow(
                  quote1: 'Good Programmers Worry about Data Structures',
                  quote2: 'Bad Programmers worry about Code',
                ),
                Divider(
                  color: Colors.lightBlue[200].withOpacity(1),
                  thickness: .5,
                ),
                Cardshow(
                  quote1:
                      'Smart data structures and dumb code works a lot better than the other way around.',
                  quote2:
                      'Algorithm becomes self evident when used with correct data structure',
                ),
                Divider(
                  color: Colors.lightBlue[200].withOpacity(1),
                  thickness: .5,
                ),
                Cardshow(
                  quote1:
                      'It is better to have 100 functions operate on one data structure than to have 10 functions operate on 10 data structures.',
                  quote2:
                      'Generally, the craft of programming is the factoring of a set of requirements into a a set of functions and data structures',
                ),
                Divider(
                  color: Colors.lightBlue[200].withOpacity(1),
                  thickness: .5,
                ),
                Cardshow(
                  quote1:
                      'A data structure is just a stupid programming language.',
                  quote2:
                      'Strings are the favorite data structure of bad programmers.',
                ),
                Divider(
                  color: Colors.lightBlue[200].withOpacity(1),
                  thickness: .5,
                ),
              ],
            ))));
  }
}
