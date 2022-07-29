import 'package:booklab/core/core.dart';
import 'package:booklab/core/errors/failure.dart';
import 'package:booklab/features/features.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BooksUseCase implements UseCase<List<Books>, BooksUseCaseParam> {
  BooksUseCase(this.repository);

  final BookRepository repository;
  @override
  Future<Either<Failure, List<Books>>> call(
    BooksUseCaseParam param,
  ) async {
    return repository.getBeneficiaries(
      fromRemote: param.fromRemote,
    );
  }
}

class BooksUseCaseParam extends Equatable {
  const BooksUseCaseParam({this.fromRemote = true});
  final bool fromRemote;

  @override
  List<Object?> get props => [fromRemote];
}
