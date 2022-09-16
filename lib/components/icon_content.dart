import 'package:bmi_application_final/constants.dart';
import 'package:flutter/material.dart';

class CardGender extends StatelessWidget {
  CardGender({required this.textGender, required this.iconGender});
  final String textGender;
  final IconData iconGender;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconGender,
            size: 80,
            color: Colors.white,
          ),
          const SizedBox(height: 15),
          Text(
            textGender,
            style: kTextStyle,
          )
        ],
      ),
    );
  }
}
