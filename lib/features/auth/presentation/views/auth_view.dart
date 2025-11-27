import 'package:flutter/material.dart';

import 'widgets/signin_view.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SigninView());
  }
}
