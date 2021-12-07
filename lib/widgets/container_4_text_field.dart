import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  const TextContainer({Key? key, this.child, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size.width*0.8,
        height: size.height*0.06,
        margin: margin,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(40),
        ),
        child: child,
      ),
    );
  }
}
