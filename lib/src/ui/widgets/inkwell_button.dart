import 'package:flutter/material.dart';

class InkWellButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  const InkWellButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.yellow,
      borderRadius: BorderRadius.circular(15.0),
      onTap: onPressed,
      child: Container(
        // decoration: BoxDecoration(
        //   color: Colors.red,
        //   borderRadius: BorderRadius.circular(15.0),
        // ),
        padding: const EdgeInsets.all(8.0),
        child: Text(buttonText),
      ),
    );
  }
}
