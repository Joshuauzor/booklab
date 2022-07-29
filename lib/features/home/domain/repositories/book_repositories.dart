import 'package:booklab/core/errors/failure.dart';
import 'package:booklab/features/features.dart';
import 'package:dartz/dartz.dart';

// ignore: one_member_abstracts
abstract class BookRepository {
  Future<Either<Failure, List<Books>>> getBooks({
    required bool fromRemote,
  });
}
