import 'package:auto_hide_keyboard/auto_hide_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuantityTextField extends StatefulWidget {
  final TextEditingController controller;
  final double size;
  final bool allowDot;
  const QuantityTextField({
    super.key,
    required this.controller,
    required this.size,
    this.allowDot = true,
  });

  @override
  State<QuantityTextField> createState() => _QuantityTextFieldState();
}

class _QuantityTextFieldState extends State<QuantityTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AutoHideKeyboard(
        child: TextField(
          controller: widget.controller,
          maxLength: 2,
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(widget.allowDot ? '[0-9.]' : '[0-9]')),
          ],
          decoration: InputDecoration(
            counter: const Offstage(),
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
          onChanged: (value) => setState(() {
            if (value.isEmpty || int.parse(value) <= 0) {
              widget.controller.text = '1';
            }
          }),
        ),
      ),
    );
  }
}
