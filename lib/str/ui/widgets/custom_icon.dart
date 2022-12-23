import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final double? size;
  const CustomIcon({
    super.key,
    required this.icon,
    this.color,
    this.size,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Icon(
        icon,
        color: color ?? Colors.grey,
        size: size ?? 40.0,
      ),
    );
  }
}
