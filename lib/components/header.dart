import 'package:data_structures/components/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:data_structures/constants.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

class Header extends StatelessWidget {
  final String title;
  Header({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      margin: EdgeInsets.only(bottom: appPadding * 1.5),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2 - 27,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.lightBlueAccent[200],
                Colors.lightGreenAccent[200]
              ]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                FlatButton.icon(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu_sharp),
                    label: MyTextStyle(
                      text: '',
                    )),
                FittedBox(
                    fit: BoxFit.fill,
                    child: MyTextStyle(
                      text: title,
                      bold: 'yes',
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
