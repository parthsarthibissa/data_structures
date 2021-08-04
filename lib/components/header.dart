import 'package:data_structures/components/textStyle.dart';
import 'package:data_structures/config/Sizing/SizingConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              color: Get.isDarkMode == true ? Colors.white : Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.menu_sharp,
                    color: Get.isDarkMode ? Colors.black : Colors.white,
                  ),
                ),
                Container(
                  width: DeviceSizeConfig.screenWidth - 120,
                  child: MyTextStyle(
                    text: title,
                    color: Get.isDarkMode ? Colors.black : Colors.white,
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
