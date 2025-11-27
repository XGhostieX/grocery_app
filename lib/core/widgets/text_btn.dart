import 'package:flutter/material.dart';

import 'custom_text.dart';

class TextBtn extends StatelessWidget {
  final String title;
  final double padding;
  final Color? color;
  final TextDecoration? decoration;
  final FontStyle? fontStyle;
  final VoidCallback function;
  const TextBtn({
    super.key,
    required this.title,
    required this.function,
    this.padding = 15,
    this.color,
    this.decoration,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.all(padding)),
      onPressed: function,
      child: CustomText(
        text: title,
        color: color,
        size: 20,
        decoration: decoration,
        fontStyle: fontStyle,
      ),
    );
  }
}
