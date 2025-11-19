import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

void showAwesomeDialog({
  required BuildContext context,
  required DialogType type,
  required String title,
  required String desc,
  required VoidCallback function,
}) {
  AwesomeDialog(
    context: context,
    dialogType: type,
    animType: AnimType.scale,
    title: title,
    desc: desc,
    btnCancelOnPress: () {},
    btnOkOnPress: function,
  ).show();
}
