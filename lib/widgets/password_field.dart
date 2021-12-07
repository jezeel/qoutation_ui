import 'package:flutter/material.dart';

import 'container_4_text_field.dart';

class PasswordField extends StatelessWidget {
  final EdgeInsetsGeometry? containerMargin;
  final ValueChanged<String>? onChangedAction;
  final TextEditingController? controller;
  final String? hintText;
  const PasswordField({Key? key, this.controller, this.containerMargin, this.onChangedAction, this.hintText = "Password"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextContainer(
      margin: containerMargin,
      child: TextField(
        controller: controller,
        obscureText: true,
        onChanged: onChangedAction,
        cursorColor: Colors.lightBlue.shade900,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            Icons.lock,
            color: Colors.black,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.black,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
