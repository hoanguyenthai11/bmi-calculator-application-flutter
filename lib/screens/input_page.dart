// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:bmi_application_final/calculator_brain.dart';
import 'package:bmi_application_final/components/bottom_button.dart';
import 'package:bmi_application_final/components/icon_content.dart';
import 'package:bmi_application_final/components/resuable_card.dart';
import 'package:bmi_application_final/components/round_icon_button.dart';
import 'package:bmi_application_final/constants.dart';
import 'package:bmi_application_final/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          child: ReusableCard(
                            shape: selectedGender == Gender.male
                                ? RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 3,
                                      color: kActiveCardColor,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  )
                                : RoundedRectangleBorder(
                                    side: BorderSide(color: kInactiveCardColor),
                                    borderRadius: BorderRadius.circular(10)),
                            colour: kInactiveCardColor,
                            cardChild: CardGender(
                              iconGender: kIconMale,
                              textGender: kTextMale,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 25,
                        right: 25,
                        child: Container(
                          child: selectedGender == Gender.male
                              ? Icon(
                                  FontAwesomeIcons.circleCheck,
                                  color: kActiveCardColor,
                                )
                              : Icon(
                                  FontAwesomeIcons.circleCheck,
                                ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          },
                          child: ReusableCard(
                              shape: selectedGender == Gender.female
                                  ? RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 3,
                                        color: kActiveCardColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    )
                                  : RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: kInactiveCardColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                              colour: kInactiveCardColor,
                              cardChild: CardGender(
                                iconGender: kIconFeMale,
                                textGender: kTextFeMale,
                              )),
                        ),
                      ),
                      Positioned(
                        top: 25,
                        right: 25,
                        child: Container(
                          child: selectedGender == Gender.female
                              ? Icon(
                                  FontAwesomeIcons.circleCheck,
                                  color: kActiveCardColor,
                                )
                              : Icon(
                                  FontAwesomeIcons.circleCheck,
                                ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kInactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: kTextNumber),
                        Container(
                          child: Text(
                            'cm',
                            style: kTextStyle,
                          ),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                        thumbColor: Color(0xff06C46B),
                        overlayColor: Color.fromARGB(41, 0, 255, 247),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'WEIGHT',
                            style: kTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kTextNumber,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'AGE',
                            style: kTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kTextNumber,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            BottomButton(
              buttonTitle: 'CACULATOR',
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                        getBMI: calc.calculatorBMI(),
                        getResult: calc.getResult(),
                        getInterpretation: calc.getInterpretation()),
                  ),
                );
              },
            )
          ],
        ));
  }
}
