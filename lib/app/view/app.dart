import 'package:booklab/core/core.dart';
import 'package:booklab/features/home/domain/usecases/book_usecases.dart';
import 'package:booklab/features/home/presentation/cubit/home_view_cubit.dart';
import 'package:booklab/injections.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeViewCubit>(
          create: (context) => HomeViewCubit(booksUseCase: sl<BooksUseCase>()),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            useInheritedMediaQuery: true,
            builder: DevicePreview.appBuilder,
            onGenerateRoute: generateRoute,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                color: AppColors.primaryColor,
              ),
              primarySwatch: Colors.blue,
              primaryColor: AppColors.primaryColor,
              colorScheme: ColorScheme.fromSwatch(
                accentColor: AppColors.primaryColor,
              ),
              scaffoldBackgroundColor: AppColors.white,
            ),
            initialRoute: RouteName.splash,
          );
        },
      ),
    );
  }
}
