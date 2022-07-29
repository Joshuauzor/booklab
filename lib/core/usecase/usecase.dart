import 'package:booklab/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

///[UseCase] is the interface that enforce the usecases structure of the app
// ignore: one_member_abstracts
abstract class UseCase<Type, Params> {
  ///[call] is the method that is responsible for executing the usecase
  Future<Either<Failure, Type>> call(Params params);
}

///[NoParams] is the type of the parameter that the usecase doesn't need
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
