import 'dart:async';

import 'package:booklab/app/styles/fonts.dart';
import 'package:booklab/app/view/widget/widget.dart';
import 'package:booklab/core/core.dart';
import 'package:booklab/features/auth/presentation/cubit/login_cubit.dart';
import 'package:booklab/features/auth/presentation/cubit/login_state.dart';
import 'package:booklab/features/features.dart';
import 'package:booklab/features/home/domain/usecases/book_usecases.dart';
import 'package:booklab/injections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  final _emailFocus = FocusNode();
  final _passwordFocus = FocusNode();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  late StreamController<String> emailStreamController;
  late StreamController<String> passwordStreamController;
  final ValueNotifier<bool> _canSubmit = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    emailStreamController = StreamController<String>.broadcast();
    passwordStreamController = StreamController<String>.broadcast();
    _emailController.addListener(() {
      emailStreamController.sink.add(_emailController.text.trim());
      validateInputs();
    });
    _passwordController.addListener(() {
      passwordStreamController.sink.add(_passwordController.text.trim());
      validateInputs();
    });
  }

  void validateInputs() {
    var canSumit = true;
    final emailError = CustomFormValidation.errorEmailMessage(
      _emailController.text.trim(),
      'Email is required',
    );
    final passwordError = CustomFormValidation.errorMessagePassword(
      _passwordController.text.trim(),
      'Password is required',
    );

    if (emailError != '' || passwordError != '') {
      canSumit = false;
    }
    _canSubmit.value = canSumit;
  }

  @override
  void dispose() {
    super.dispose();
    emailStreamController.close();
    passwordStreamController.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(booksUseCase: sl<BooksUseCase>()),
      child: Scaffold(
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              unauthenticated: (message) {
                FlushBarNotification.showError(
                  context: context,
                  message: message,
                );
              },
              authenticated: () {
                Navigator.pushReplacementNamed(
                  context,
                  RouteName.appTabView,
                );
              },
            );
          },
          builder: (context, state) {
            return Padding(
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
                  StreamBuilder<String>(
                    stream: emailStreamController.stream,
                    builder: (context, snapshot) {
                      return InputField(
                        controller: _emailController,
                        placeholder: 'email@email.com',
                        validationMessage:
                            CustomFormValidation.errorEmailMessage(
                          snapshot.data,
                          'Email is required*',
                        ),
                        validationColor: CustomFormValidation.getColor(
                          snapshot.data,
                          _emailFocus,
                          CustomFormValidation.errorEmailMessage(
                            snapshot.data,
                            'Email is required*',
                          ),
                        ),
                      );
                    },
                  ),
                  const Gap(25),
                  StreamBuilder<String>(
                    stream: passwordStreamController.stream,
                    builder: (context, snapshot) {
                      return InputField(
                        controller: _passwordController,
                        placeholder: 'password',
                        password: true,
                        validationMessage:
                            CustomFormValidation.errorMessagePassword(
                          snapshot.data,
                          'Password is required*',
                        ),
                        validationColor: CustomFormValidation.getColor(
                          snapshot.data,
                          _passwordFocus,
                          CustomFormValidation.errorMessagePassword(
                            snapshot.data,
                            'Password is required*',
                          ),
                        ),
                      );
                    },
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
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, RouteName.signup),
                    child: TextRegular(
                      'Don’t have an account? Sign up',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Gap(screenHeight(context) * 0.04),
                  ValueListenableBuilder(
                    valueListenable: _canSubmit,
                    builder: (
                      context,
                      canSubmit,
                      child,
                    ) {
                      return BusyButton(
                        title: 'Login',
                        deactivate: canSubmit == false ||
                            state.maybeWhen(
                              orElse: () => false,
                              loading: () => true,
                            ),
                        loading: state.maybeWhen(
                          orElse: () => false,
                          loading: () => true,
                        ),
                        onpress: () async {
                          await context.read<LoginCubit>().login(context);
                        },
                      );
                    },
                  ),
                  Gap(screenHeight(context) * 0.03),
                  const PhoneIdVerification()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
