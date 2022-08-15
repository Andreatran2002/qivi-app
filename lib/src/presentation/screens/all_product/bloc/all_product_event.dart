import 'package:equatable/equatable.dart';

abstract class AllProductEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadHome extends AllProductEvent {}

class RefreshHome extends AllProductEvent {}
