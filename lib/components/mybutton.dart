import 'package:data_structures/components/textStyle.dart';
import 'package:data_structures/config/Sizing/SizingConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  const MyButton({this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: DeviceSizeConfig.safeBlockHorizontal * 2,
        height: DeviceSizeConfig.safeBlockVertical * 4,
        disabledColor: Colors.blueGrey,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              primary: Get.isDarkMode ? Colors.black : Colors.white),
          child: MyTextStyle(
            text: text,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ));
  }
}
