import 'package:equatable/equatable.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/entity/user.dart';

class HomeDrawerState extends Equatable {
  const HomeDrawerState();

  @override
  List<Object> get props => [];
}

class HomeDrawerLoaded extends HomeDrawerState {
  final User user;

  HomeDrawerLoaded(this.user);

  @override
  List<Object> get props => [user];

  @override
  String toString() {
    return 'HomeDrawerLoaded{User: $user}';
  }
}

class HomeDrawerNotLoaded extends HomeDrawerState {}
