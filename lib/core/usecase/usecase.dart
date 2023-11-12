import 'package:equatable/equatable.dart';

abstract class Usecase<Type, Params> {
  Future<Type> call(Params params);
}

class Noparams extends Equatable {
  @override
  List<Object?> get props => [];
}