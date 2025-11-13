import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_appbar.dart';
import 'widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title: ''),
      body: DetailsViewBody(),
    );
  }
}
