import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final Color? bgColor;
  final OutlinedBorder? shape;
  final VoidCallback function;

  const IconBtn({
    super.key,
    required this.icon,
    this.color,
    this.bgColor,
    this.shape,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: function,
      icon: Icon(icon),
      color: color,
      style: IconButton.styleFrom(backgroundColor: bgColor, shape: shape),
    );
  }
}
