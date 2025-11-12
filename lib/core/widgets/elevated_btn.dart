import 'package:flutter/material.dart';

import 'custom_text.dart';

class ElevatedBtn extends StatelessWidget {
  final String title;
  final VoidCallback function;
  const ElevatedBtn({super.key, required this.title, required this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: CustomText(text: title),
    );
  }
}
