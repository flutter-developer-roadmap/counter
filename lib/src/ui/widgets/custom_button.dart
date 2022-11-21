import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final OutlinedBorder? shape;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.foregroundColor,
    this.backgroundColor,
    this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: foregroundColor ?? Colors.white,
        backgroundColor: backgroundColor ?? Colors.red,
        disabledForegroundColor: Colors.grey,
        disabledBackgroundColor: Colors.grey.shade200,
        shape: shape ?? const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
