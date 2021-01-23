import 'package:data_structures/components/textStyle.dart';
import 'package:data_structures/config/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  const MyButton({this.onPressed, this.text});
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: MediaQuery.of(context).size.height / 7,
        height: MediaQuery.of(context).size.height / 22,
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
