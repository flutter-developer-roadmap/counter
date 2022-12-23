import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final String label;
  final VoidCallback? action;
  const CustomButton({
    super.key,
    required this.icon,
    this.color,
    required this.label,
    this.action,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: IconButton(
        onPressed: action,
        icon: Icon(icon),
        tooltip: label,
        splashColor: color ?? Colors.grey,
        padding: const EdgeInsets.all(5.0),
      ),
    );
  }
}
