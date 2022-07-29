import 'package:booklab/core/errors/error.dart';
import 'package:booklab/core/errors/failure.dart';
import 'package:booklab/features/home/data/datasources/book_remote_datasouce.dart';
import 'package:booklab/features/home/data/models/book_model.dart';
import 'package:booklab/features/home/domain/repositories/book_repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: BookRepository)
class BookRepositoryImpl implements BookRepository {
  BookRepositoryImpl(this.bookRemoteDataSource);

  final BookRemoteDataSource bookRemoteDataSource;

  @override
  Future<Either<Failure, List<BookModel>>> getBooks({
    required bool fromRemote,
  }) async {
    try {
      final books = await bookRemoteDataSource.getBooks(fromRemote: fromRemote);
      return Right(books);
    } catch (e) {
      if (e is BookLabException) {
        return Left(
          e.when(
            server: Failure.serverError,
            noInternet: Failure.noInternet,
            app: Failure.app,
            unknown: Failure.unknown,
          ),
        );
      } else if (e is DioError) {
        return Left(
          Failure.serverError(
            (e.response?.data
                    as Map<String, dynamic>?)?['responseDescription'] ??
                e.message,
          ),
        );
      }
      return const Left(Failure.unknown());
    }
  }
}
