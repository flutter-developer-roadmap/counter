import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final AlignmentGeometry? textAlignment;

  const CustomContainer({
    Key? key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.textAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: textAlignment ?? Alignment.center,
      color: backgroundColor ?? Colors.green,
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? Colors.white,
        ),
      ),
    );
  }
}
