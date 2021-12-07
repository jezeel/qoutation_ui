
import 'package:flutter/material.dart';

class LogInOrSignUpButton extends StatelessWidget {
  final void Function()? textButtonAction;
  final String? buttonText;
  const LogInOrSignUpButton({Key? key, this.textButtonAction, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: textButtonAction,
        child: Text(buttonText!, style: TextStyle(color: Colors.black,decoration: TextDecoration.underline),)
    );
  }
}