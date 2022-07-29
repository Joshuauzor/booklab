import 'package:booklab/features/auth/presentation/cubit/login_state.dart';
import 'package:booklab/features/features.dart';
import 'package:booklab/features/home/domain/usecases/book_usecases.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    required this.booksUseCase,
  }) : super(const LoginState.initial());

  final BooksUseCase booksUseCase;
  List<Books>? books;

  Future<void> login(
    BuildContext context,
  ) async {
    emit(const LoginState.loading());
    // log user in here
    final result = await booksUseCase(const BooksUseCaseParam());

    // emit(
    //   await result.fold(
    //       (failure) => const LoginState.unauthenticated('An error occured'),
    //       (books) {
    //     this.books = books;
    //     return const LoginState.authenticated();
    //   }),
    // );
    emit(const LoginState.authenticated());
  }
}
