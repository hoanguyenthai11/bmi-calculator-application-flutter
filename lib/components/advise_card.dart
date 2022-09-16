import 'package:flutter/material.dart';

import '../constants.dart';

class AdviseCard extends StatelessWidget {
  String getInterpretation;
  AdviseCard({required this.getInterpretation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            const BoxShadow(
              color: Colors.black,
              offset: Offset(5, 5),
              blurRadius: 15,
              spreadRadius: 5,
            ),
            BoxShadow(
                color: Colors.grey.shade800,
                offset: Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1)
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            getInterpretation,
            style: kBodyTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
