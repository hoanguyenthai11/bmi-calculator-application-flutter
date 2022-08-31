import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.cardChild, this.shape});
  final Color colour;
  final Widget cardChild;
  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: shape,
      child: cardChild,
      margin: EdgeInsets.all(15),
      // decoration: BoxDecoration(
      //   color: colour,
      //   borderRadius: BorderRadius.circular(10),

      // ),
      color: colour,
      elevation: 5,
    );
  }
}
