import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color? buttonColor;
  final void Function()? press;
  final String? buttonText;
  final Color? textColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? buttonHeight;
  final double? buttonWidth;
  const Button({Key? key,
    this.buttonColor,
    this.buttonWidth,
    this.buttonHeight,
    this.press,
    this.buttonText,
    this.textColor,
    this.margin,
    this.padding,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Colors.black, width: 3),
        ),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: TextButton(
            onPressed: press,
            style: TextButton.styleFrom(
              backgroundColor: buttonColor,
            ),
            child: Text(buttonText!, style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 17),),
          ),
        ),
      ),
    );
  }
}