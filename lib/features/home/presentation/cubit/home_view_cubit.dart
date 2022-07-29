import 'package:booklab/features/home/domain/usecases/book_usecases.dart';
import 'package:booklab/features/home/presentation/cubit/home_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewCubit extends Cubit<HomeViewState> {
  HomeViewCubit({
    required this.booksUseCase,
  }) : super(const HomeViewState.initial());

  final BooksUseCase booksUseCase;

  Future<void> getBooks(
    BuildContext context,
  ) async {
    emit(const HomeViewState.loading());
    final result = await booksUseCase(const BooksUseCaseParam());
    // emit(

    // )
  }
}
