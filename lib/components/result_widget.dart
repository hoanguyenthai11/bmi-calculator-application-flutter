import 'package:flutter/material.dart';
import '../constants.dart';

class ResultWidget extends StatelessWidget {
  String getBMI;
  String getResult;

  ResultWidget({required this.getBMI, required this.getResult});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          getBMI,
          style: kBMITextStyle,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'BMI',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              getResult,
              style: kResultTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
