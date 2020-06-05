import 'package:bmi_calculator/bmi_calculation.dart';
import 'package:bmi_calculator/results.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BottomButton.dart';
import 'card_design.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          title: Center(
            child: Text(
              'BMI CALCULATOR',
              style: TextStyle(color: Color(0xFF5B657F)),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Row(children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                    decoration: BoxDecoration(
                      color: selectedgender == Gender.male
                          ? kactivebackground
                          : kinactivebackground,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[500].withOpacity(0.2),
                          spreadRadius: 6.5,
                          blurRadius: 6,
                          offset: Offset(5, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Card_design(
                      col: selectedgender == Gender.male
                          ? kactivebackground
                          : kinactivebackground,
                      cardChild: IconContent(
                        FontAwesomeIcons.mars,
                        'MALE',
                        selectedgender == Gender.male
                            ? kactiveforeground
                            : kinactiveforeground
                      ),
                      onpress: () {
                        setState(() {
                          selectedgender = Gender.male;
                        });
                      },
                    ),
                  ),
                ),
                // SizedBox(
                //   width:5,
                // ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                    decoration: BoxDecoration(
                      color: selectedgender == Gender.female
                          ? kactivebackground
                          : kinactivebackground,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[500].withOpacity(0.2),
                          spreadRadius: 6.5,
                          blurRadius: 6,
                          offset: Offset(5, 5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Card_design(
                        col: selectedgender == Gender.female
                            ? kactivebackground
                            : kinactivebackground,
                        cardChild: IconContent(
                          FontAwesomeIcons.venus,
                          'FEMALE',
                          selectedgender == Gender.female
                              ? kactiveforeground
                              : kinactiveforeground,
                        ),
                        onpress: () {
                          setState(() {
                            selectedgender = Gender.female;
                          });
                        }),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Card_design(
                col: kCardColor,
                cardChild: Container(
                  decoration: BoxDecoration(
                    color: kinactivebackground,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[500].withOpacity(0.2),
                        spreadRadius: 9,
                        blurRadius: 10,
                        offset: Offset(7, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xFFD7D8DE),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: knumstyle,
                          ),
                          Text(
                            'cm',
                            style: kunitstyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: kactivebackground,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 25),
                          thumbColor: Color(0xFFE3E3E3),
                          overlayColor: Color(0x15E3E3E3),
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 240,
                            inactiveColor: Color(0xFFE3E3E3),
                            onChanged: (double newvalue) {
                              setState(() {
                                height = newvalue.toInt();
                              });
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(children: [
                Expanded(
                  child: Card_design(
                    col: kCardColor,
                    cardChild: Container(
                      decoration: BoxDecoration(
                        color: kinactivebackground,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[500].withOpacity(0.2),
                            spreadRadius: 6.5,
                            blurRadius: 6,
                            offset: Offset(5, 5), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "WEIGHT",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFFD7D8DE),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                weight.toString(),
                                style: knumstyle,
                              ),
                              Text(
                                'kg',
                                style: kunitstyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FloatingActionButton(
                                heroTag: 'weight--',
                                child: Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                foregroundColor: Color(0xFF80869B),
                                backgroundColor: kinactivebackground,
                                elevation: 8.0,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                heroTag: 'weight++',
                                child: Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                foregroundColor: Color(0xFF80869B),
                                backgroundColor: kinactivebackground,
                                elevation: 8.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card_design(
                    col: kCardColor,
                    cardChild: Container(
                      decoration: BoxDecoration(
                        color: kinactivebackground,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[500].withOpacity(0.2),
                            spreadRadius: 6.5,
                            blurRadius: 6,
                            offset: Offset(5, 7), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "AGE",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFFD7D8DE),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                age.toString(),
                                style: knumstyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FloatingActionButton(
                                heroTag: 'age--',
                                child: Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                foregroundColor: Color(0xFF80869B),
                                backgroundColor: kinactivebackground,
                                elevation: 8.0,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                heroTag: 'age++',
                                child: Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                foregroundColor: Color(0xFF80869B),
                                backgroundColor: kinactivebackground,
                                elevation: 8.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            BottomButton(
              text: 'Calculate BMI',
              onpress: () {
                BMI_calculation calc =
                    BMI_calculation(height: height, weight: weight);
                //Navigator.pushNamed(context, '/results');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultsPage(
                            bmi: calc.BMI(),
                            bmiResult: calc.result(),
                            interpretation: calc.interpreter())));
              },
            )
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.i, @required this.onpress});
  final Widget i;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF80869B),
      child: RawMaterialButton(
        onPressed: onpress(),
        child: i,
        elevation: 8.0,
        //focusColor: Color(0xFF80869B),
        //splashColor: Color(0xFF80869B),
        //highlightColor: Color(0xFF80869B),
        shape: CircleBorder(),
        fillColor: kinactivebackground,
        constraints: BoxConstraints.tightFor(
          width: 40.0,
          height: 40.0,
        ),
      ),
    );
  }
}
