import 'package:data_structures/components/textStyle.dart';
import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({this.data, this.title, this.button});

  final String data;
  final String title;
  final Widget button;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.amber,
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SizedBox(
            child: Column(
              children: [
                MyTextStyle(
                  text: this.title + '\n',
                  size: 40,
                ),
                MyTextStyle(
                  text: this.data,
                  size: 25,
                ),
                button
              ],
            ),
          )),
    );
  }
}
