import 'package:flutter/material.dart';

import 'container_4_text_field.dart';

class InputTextField extends StatelessWidget {
  final ValueChanged<String>? onChangedAction;
  final IconData? icon;
  final String? hintText;
  final EdgeInsetsGeometry? containerMargin;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;

  const InputTextField({
    Key? key,
    this.onSaved,
    this.validator,
    this.controller,
    this.icon = Icons.person,
    this.hintText,
    this.onChangedAction,
    this.containerMargin,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return TextContainer(
      margin: containerMargin,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        onChanged: onChangedAction,
        cursorColor: Colors.lightBlue.shade900,
        decoration: InputDecoration(
          icon: Icon(icon,
            color: Colors.black,
          ),
          hintText: hintText,
          border: InputBorder.none,

        ),
        validator: validator,
        onSaved: onSaved,
      ),
    );
  }
}
