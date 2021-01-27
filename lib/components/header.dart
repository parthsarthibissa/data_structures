import 'package:data_structures/components/textStyle.dart';
import 'package:data_structures/config/Sizing/SizingConfig.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  Header({@required this.title});
  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig()..init(context);
    return Container(
      height: DeviceSizeConfig.blockSizeVertical * 15,
      width: DeviceSizeConfig.screenWidth,
      margin: EdgeInsets.only(bottom: 20 * 1.5),
      child: Stack(
        children: [
          Container(
            height: DeviceSizeConfig.blockSizeVertical * 20 - 10,
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
                Container(
                  width: DeviceSizeConfig.screenWidth - 120,
                  child: MyTextStyle(
                    text: title,
                    bold: 'yes',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
