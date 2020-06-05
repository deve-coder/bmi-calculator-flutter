import 'package:bmi_calculator/BottomButton.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmi,@required this.bmiResult,@required this.interpretation});
  final String bmiResult;
  final String interpretation;
  final String bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarOpacity: 0.2,
        elevation: 0.0,
        title: Center(
          child: Text(
            'BMI RESULTS',
            style: TextStyle(color: Color(0xFF5F6882)),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(bmiResult.toUpperCase(), style: kresultstyle),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                child: Center(
                  child: Text(bmi, style: kresultnumber),
                ),
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: kinactivebackground,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                interpretation,
                textAlign: TextAlign.center,
                style: kinterpretationstyle,
              ),
            ),
          ),
          BottomButton(
            text: 'Calculate BMI Again',
          onpress: (){Navigator.pop(context);},), 
        ],
      ),
    );
  }
}
