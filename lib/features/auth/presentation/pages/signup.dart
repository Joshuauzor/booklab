import 'package:booklab/app/styles/fonts.dart';
import 'package:booklab/app/view/widget/widget.dart';
import 'package:booklab/core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          children: [
            Gap(screenHeight(context) * 0.15),
            TextBold(
              'Create your Account',
              fontSize: 40,
            ),
            Gap(screenHeight(context) * 0.03),
            InputField(
              controller: _emailController,
              placeholder: 'email@email.com',
            ),
            const Gap(25),
            InputField(
              controller: _passwordController,
              placeholder: 'password',
              password: true,
            ),
            const Gap(44),
            const Gap(14),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, RouteName.login),
              child: TextRegular(
                'Already an account? Sign in',
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(screenHeight(context) * 0.04),
            BusyButton(title: 'Signup', onpress: () {}),
            Gap(screenHeight(context) * 0.03),
          ],
        ),
      ),
    );
  }
}
