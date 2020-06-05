import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.text,this.onpress});
final String text;
final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, '/results');
        onpress();
      },
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kbottombuttonstyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        width: kbottomButtonWidth,
        height: kbottomButtonHeight,
        decoration: BoxDecoration(
          color: Color(0xFF7CDAE3),
          //borderRadius: BorderRadius.circular(50)
        ),
      ),
    );
  }
}