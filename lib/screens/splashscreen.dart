import 'package:data_structures/main.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      imageSrc: 'assets/images.jpg',
      home: HomePage(),
      duration: 6000,
      backgroundColor: Colors.white,
      text: 'Data Structures And Algorithms',
      textType: TextType.TyperAnimatedText,
    );
  }
}
