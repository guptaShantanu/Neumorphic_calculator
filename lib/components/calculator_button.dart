import 'package:flutter/material.dart';
//constants
import 'package:calculator/utilities/constants.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    this.icon=null,
     this.text,
    @required this.style,
    this.isZero = false,
    @required this.onPressed,
  });

  final text;
  final style;
  final isZero;
  final onPressed;
  final icon;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final squareSideLength = width / 5;
    final buttonWidth = squareSideLength * (isZero ? 2.2 : 1);
    final buttonSize = Size(buttonWidth, squareSideLength);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: buttonSize.width,
        height: buttonSize.height,
        child: Center(
          child: Align(
            alignment: Alignment((isZero ? -0.6 : 0), 0),
            child:icon==null? Text(
              text,
              style: style,
            ):Icon(icon,color:  Color.fromRGBO(171, 171, 171, 1)
              ,),
          ),
        ),
        decoration: BoxDecoration(
          color: KBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          boxShadow: KButtonBoxShadow,
        ),
      ),
    );
  }
}
