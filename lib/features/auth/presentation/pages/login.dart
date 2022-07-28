import 'package:booklab/app/styles/fonts.dart';
import 'package:booklab/app/view/widget/busy_button.dart';
import 'package:booklab/app/view/widget/widget.dart';
import 'package:booklab/core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            const Gap(171),
            TextBold(
              'Login to your Account',
              fontSize: 40,
            ),
            const Gap(69),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: isChecked,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ),
                TextRegular(
                  'Remember me',
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
            const Gap(14),
            TextRegular(
              'Don’t have an account? Sign in',
              fontWeight: FontWeight.w500,
            ),
            const Gap(70),
            BusyButton(title: 'Login', onpress: () {}),
          ],
        ),
      ),
    );
  }
}
