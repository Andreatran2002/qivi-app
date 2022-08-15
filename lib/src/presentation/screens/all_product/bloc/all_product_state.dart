import 'package:equatable/equatable.dart';

abstract class AllProductState extends Equatable {
  const AllProductState();

  @override
  List<Object> get props => [];
}

class AllProductLoading extends AllProductState {}

class AllProductLoaded extends AllProductState {
  final response;

  const AllProductLoaded(this.response);

  @override
  List<Object> get props {
    return [response];
  }

  @override
  String toString() {
    return 'AllProductLoaded{response: $response}';
  }
}

class AllProductNotLoaded extends AllProductState {
  final String e;

  const AllProductNotLoaded(this.e);

  @override
  String toString() {
    return 'AllProductNotLoaded{e: $e}';
  }
}
