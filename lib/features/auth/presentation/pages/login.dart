import 'package:booklab/app/styles/fonts.dart';
import 'package:booklab/app/view/widget/busy_button.dart';
import 'package:booklab/app/view/widget/widget.dart';
import 'package:booklab/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            Gap(screenHeight(context) * 0.15),
            TextBold(
              'Login to your Account',
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
            Gap(screenHeight(context) * 0.04),
            BusyButton(title: 'Login', onpress: () {}),
            Gap(screenHeight(context) * 0.03),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 2,
                    color: AppColors.tenBlack,
                  )
                ],
              ),
              child: SvgPicture.asset(
                AppAssets.fingerprint,
              ),
            )
          ],
        ),
      ),
    );
  }
}
