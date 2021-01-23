import 'package:data_structures/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      imageSrc: 'assets/images.png',
      home: HomePage(),
      duration: 5000,
      backgroundColor: Get.isDarkMode ? Colors.black87 : Colors.white,
      text: 'Data Structures And Algorithms',
      textType: TextType.TyperAnimatedText,
      textStyle:
          TextStyle(color: Get.isDarkMode ? Colors.white : Colors.black87),
    );
  }
}
