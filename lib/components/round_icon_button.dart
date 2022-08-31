import 'package:bmi_application_final/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  // RoundIconButton({required this.icon, required this.onPress});

  const RoundIconButton({Key? key, required this.icon, required this.onPress})
      : super(key: key);

  final IconData icon;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    // return RawMaterialButton(
    //   child: Icon(icon),
    //   elevation: 5.0,
    //   onPressed: onPress,
    //   shape: CircleBorder(),
    //   constraints: BoxConstraints.tightFor(
    //     width: 56.0,
    //     height: 56.0,
    //   ),
    //   fillColor: Color(0xFF4C4F5E),
    // );
    return InkWell(
      onTap: onPress,
      borderRadius: BorderRadius.circular(50),
      splashColor: Colors.white,
      child: Container(
        width: 56,
        height: 56,
        child: Icon(icon),
        decoration: BoxDecoration(
          color: kInactiveCardColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
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
      ),
    );
  }
}
