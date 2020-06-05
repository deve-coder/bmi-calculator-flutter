import 'package:flutter/material.dart';

class Card_design extends StatelessWidget {
  Card_design({this.col,this.cardChild, this.onpress});
  final Color col;
  final Widget cardChild;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: col,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
