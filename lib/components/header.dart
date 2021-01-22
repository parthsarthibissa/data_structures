import 'package:data_structures/components/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:data_structures/constants.dart';

class Header extends StatelessWidget {
  final Size size;
  final String title;
  Header({@required this.size, @required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      margin: EdgeInsets.only(bottom: appPadding * 1.5),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.12,
            width: size.width,
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
                    icon: Icon(Icons.menu_open),
                    label: MyTextStyle(
                      text: '',
                    )),
                FittedBox(
                    fit: BoxFit.fitWidth,
                    child: MyTextStyle(
                      text: title,
                      fontColor: Colors.black87,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
