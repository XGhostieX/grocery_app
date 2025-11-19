import 'package:flutter/material.dart';

import 'custom_text.dart';

class ElevatedBtn extends StatelessWidget {
  final String title;
  final VoidCallback function;
  final Color? bgColor;
  final Color? fgColor;
  const ElevatedBtn({
    super.key,
    required this.title,
    required this.function,
    this.bgColor,
    this.fgColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15),
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: CustomText(text: title),
    );
  }
}
