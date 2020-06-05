import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent(this.icon_build, this.gender, this.foreground);

  final IconData icon_build;
  final String gender;
  final Color foreground;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon_build,
          size: 50,
          color: foreground,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          gender,
          style: TextStyle(
            fontSize: 25,
            color: foreground,
          ),
        ),
      ],
    );
  }
}
