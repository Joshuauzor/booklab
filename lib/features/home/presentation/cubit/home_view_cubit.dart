import 'dart:math';

import 'package:booklab/core/errors/failure.dart';
import 'package:booklab/features/features.dart';
import 'package:booklab/features/home/data/models/book_model.dart';
import 'package:booklab/features/home/domain/usecases/book_usecases.dart';
import 'package:booklab/features/home/presentation/cubit/home_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class HomeViewCubit extends Cubit<HomeViewState> {
  HomeViewCubit({
    required this.booksUseCase,
  }) : super(const HomeViewState.initial());

  final BooksUseCase booksUseCase;
  List<Books> books = [];
  List<Books> onlineBooks = [];
  List<Books> customBooks = [];

  Future<void> getBooks(
    BuildContext context,
  ) async {
    emit(const HomeViewState.loading());
    final result = await booksUseCase(const BooksUseCaseParam());
    emit(
      await result.fold(
        (failure) => HomeViewState.error(ConvertFailureToString()(failure)),
        (books) {
          this.books = books;
          computeDiffStores(books);
          return HomeViewState.loaded(books, '');
        },
      ),
    );
  }

  void computeDiffStores(List<Books> books) {
    for (final book in books) {
      if (!book.isCustom) {
        onlineBooks.add(book);
      } else {
        customBooks.add(book);
      }
    }
  }

  Future<void> addBook({
    required BuildContext context,
    required String title,
    required String author,
    required String imgUrl,
    required String price,
    required String description,
  }) async {
    emit(const HomeViewState.loading());
    await Future.delayed(
      const Duration(seconds: 2),
    );
    Logger().d(books.length);

    books.add(
      BookModel(
        id: Random().nextInt(100),
        title: title,
        author: author,
        imgUrl: imgUrl,
        price: price,
        review: '',
        description: description,
        source: '',
        isCustom: true,
      ),
    );
    computeDiffStores(books);

    emit(const HomeViewState.loaded([], 'Custom book created'));
  }
}
