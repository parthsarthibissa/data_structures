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
                Text(
                  this.title + '\n',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text(this.data,
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
                button
              ],
            ),
          )),
    );
  }
}
