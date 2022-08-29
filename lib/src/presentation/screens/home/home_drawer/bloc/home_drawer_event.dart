import 'package:equatable/equatable.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/entity/user.dart';

class HomeDrawerEvent extends Equatable {
  const HomeDrawerEvent();

  @override
  List<Object> get props => [];
}

class DisplayHomeDrawer extends HomeDrawerEvent {
  final User user;

  DisplayHomeDrawer(this.user);

  @override
  List<Object> get props => [user];

  @override
  String toString() {
    return 'DisplayHomeDrawer{User: $user}';
  }
}
