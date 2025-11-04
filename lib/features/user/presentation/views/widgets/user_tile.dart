import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../../core/widgets/custom_text.dart';

class UserTile extends StatelessWidget {
  final IconData leading;
  final String title;
  final String? subtitle;
  final Widget trailing;
  final VoidCallback function;
  const UserTile({
    super.key,
    required this.leading,
    required this.title,
    this.subtitle,
    required this.function,
    this.trailing = const Icon(IconlyBold.arrowRight2),
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leading),
      title: CustomText(text: title, isBold: true, size: 24),
      subtitle: subtitle == null ? null : CustomText(text: subtitle!, size: 16),
      trailing: trailing,
      onTap: function,
    );
  }
}
