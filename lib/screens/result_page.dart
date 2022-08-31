// ignore_for_file: prefer_const_constructors

import 'package:bmi_application_final/components/advise_card.dart';
import 'package:bmi_application_final/components/bottom_button.dart';
import 'package:bmi_application_final/components/progress_bar.dart';
import 'package:bmi_application_final/components/resuable_card.dart';
import 'package:bmi_application_final/components/result_widget.dart';
import 'package:bmi_application_final/constants.dart';

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ResultPage extends StatelessWidget {
  // const ResultPage({Key? key}) : super(key: key);

  ResultPage(
      {required this.getBMI,
      required this.getResult,
      required this.getInterpretation});

  final String getBMI;
  final String getResult;
  final String getInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ResultWidget(getBMI: getBMI, getResult: getResult),
                SizedBox(
                  height: 40.0,
                ),
                //Progress
                ProgressBar(),
                SizedBox(
                  height: 40.0,
                ),
                AdviseCard(getInterpretation: getInterpretation)
              ],
            ),
          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    ));
  }
}
