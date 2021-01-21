import 'package:data_structures/components/textStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:data_structures/constants.dart';

class Cardshow extends StatelessWidget {
  final String quote1;
  final String quote2;
  const Cardshow({this.quote1, this.quote2});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: <Widget>[
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(appPadding),
                      topLeft: Radius.circular(appPadding)),
                ),
                color: Colors.lightBlue[100],
                onPressed: () {},
                child: MyTextStyle(
                  text: quote1,
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(appPadding),
                      topRight: Radius.circular(appPadding)),
                ),
                color: Colors.lightBlue.withOpacity(0.1),
                onPressed: () {},
                child: MyTextStyle(
                  text: quote2,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
