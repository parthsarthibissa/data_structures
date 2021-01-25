import 'package:data_structures/components/textStyle.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:get/get.dart';

class MyButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  const MyButton({this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()..init(context);
    return ButtonTheme(
        minWidth: scaler.getWidth(3),
        height: scaler.getHeight(3),
        child: RaisedButton(
          onPressed: onPressed,
          color: Get.isDarkMode
              ? Colors.lightBlueAccent[100]
              : Colors.lightGreenAccent[100],
          child: MyTextStyle(
            text: text,
            color: Colors.black,
          ),
        ));
  }
}
