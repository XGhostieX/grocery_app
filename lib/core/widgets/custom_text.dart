import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final bool isBold;
  final int? maxLines;
  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.isBold = false,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: isBold ? FontWeight.bold : null,
        color: color,
        overflow: TextOverflow.ellipsis,
      ),
      maxLines: maxLines,
    );
  }
}
