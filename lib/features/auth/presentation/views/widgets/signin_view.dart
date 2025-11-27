import 'package:auto_hide_keyboard/auto_hide_keyboard.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/functions/display_message.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/elevated_btn.dart';
import '../../../../../core/widgets/text_btn.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      displayMessage('Sign In Successful', false);
      GoRouter.of(context).pushReplacement(AppRouter.kTabsView);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Swiper(
            itemBuilder: (BuildContext context, int index) =>
                Image.asset(Assets().landing[index], fit: BoxFit.cover),
            itemCount: Assets().landing.length,
            autoplay: true,
          ),
          Container(color: Colors.black.withValues(alpha: 0.7)),
          SingleChildScrollView(
            padding: const EdgeInsets.all(20).copyWith(top: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(text: 'Welcome Back', color: Colors.white, size: 30, isBold: true),
                const SizedBox(height: 5),
                const CustomText(text: 'Sign in to Continue', color: Colors.white, size: 18),
                const SizedBox(height: 30),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AutoHideKeyboard(
                        child: TextFormField(
                          controller: _emailController,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.lightBlue),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      AutoHideKeyboard(
                        child: TextFormField(
                          controller: _passwordController,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: _isObscure,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },
                          onEditingComplete: _submitForm,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: Colors.white),
                            suffixIcon: IconButton(
                              onPressed: () => setState(() {
                                _isObscure = !_isObscure;
                              }),
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility_off_rounded
                                    : Icons.visibility_rounded,
                              ),
                            ),
                            suffixIconColor: _isObscure ? Colors.white : Colors.lightBlue,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.lightBlue),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextBtn(
                          title: 'Forget Password ?',
                          decoration: TextDecoration.underline,
                          fontStyle: FontStyle.italic,
                          color: Colors.lightBlue,
                          function: () {},
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedBtn(
                        title: 'Sign In',
                        bgColor: Colors.white38,
                        fgColor: Colors.white,
                        width: double.infinity,
                        height: 50,
                        function: _submitForm,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton.icon(
                        onPressed: () {},
                        label: const CustomText(text: 'Sign In With Google', size: 18),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(15),
                          minimumSize: const Size(double.infinity, 50),
                          backgroundColor: Colors.lightBlue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                        icon: Image.asset(Assets.google, fit: BoxFit.cover, height: 25, width: 25),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Expanded(child: Divider(thickness: 2, color: Colors.white)),
                          CustomText(text: '  OR  ', size: 18),
                          Expanded(child: Divider(thickness: 2, color: Colors.white)),
                        ],
                      ),
                      const SizedBox(height: 15),
                      ElevatedBtn(
                        title: 'Continue as A Guest',
                        bgColor: Colors.black,
                        fgColor: Colors.white,
                        width: double.infinity,
                        height: 50,
                        function: () {},
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const CustomText(text: "Don't Have an Account ?", size: 20),
                          TextBtn(
                            title: 'Sign Up',
                            color: Colors.lightBlue,
                            function: () =>
                                GoRouter.of(context).pushReplacement(AppRouter.kSignupView),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
