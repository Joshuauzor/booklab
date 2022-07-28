import 'package:booklab/core/constant/constant.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future<void> _pageSetup() async {
    final navigator = Navigator.of(context);
    // final userResult = await sl<GetUserUseCase>().call(
    //   const GetUserParam(
    //     fromRemote: false,
    //   ),
    // );

    Future.delayed(
      const Duration(seconds: 2),
      () =>
          // userResult.fold((l) {
          navigator.pushReplacementNamed(
        RouteName.login,
      ),
      // }, (user) {
      //   BlocProvider.of<GoxUserBloc>(context).add(
      //     UserEvent.updated(user: user),
      //   );
      //   navigator.pushReplacementNamed(
      //     RouteName.rememberedUserLogin,
      //   );
      // });
    );
  }

  @override
  void initState() {
    _pageSetup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Image.asset(
          AppAssets.backgroundImage,
        ),
      ),
    );
  }
}
