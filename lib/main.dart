import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFEDEDED),
        scaffoldBackgroundColor: Color(0xFFEDEDED),
        textTheme: TextTheme(
          bodyText2: TextStyle(color:Color(0xFF5B657F))
        ) 
      ),
      home: InputPage(),
      
    );
  }
}


