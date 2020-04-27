import 'package:flutter/material.dart';

const KBackgroundColor = Color.fromRGBO(239, 238, 238, 1);
const KOperatorTextColor = Color.fromRGBO(238, 134, 48, 1);
const KNumberTextColor = Color.fromRGBO(38, 38, 38, 1);
const KSpecialOperatorTextColor = Color.fromRGBO(171, 171, 171, 1);



const KCalculationTextStyle = TextStyle(
  fontSize: 55,
  fontWeight: FontWeight.bold,
  fontFamily: 'Montserrat',
);

const KCalculationSmallTextStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  fontFamily: 'Montserrat',
);

const KCalculatorTextStyle = TextStyle(
  color: KNumberTextColor,
  fontSize: 22,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w900,
);

const KSpecialOperatorTextStyle = TextStyle(
  color: KSpecialOperatorTextColor,
  fontSize: 22,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w900,
);

const KOperatorTextStyle = TextStyle(
  color: KOperatorTextColor,
  fontSize: 30,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w900,
);

const KButtonBoxShadow = [
  BoxShadow(
    color: Color.fromRGBO(216, 213, 208, 1),
    offset: Offset(5.0, 5.0),
    blurRadius: 15.0,
  ),
  BoxShadow(
    color: Colors.white,
    offset: Offset(-5.0, -5.0),
    blurRadius: 15.0,
  )
];
