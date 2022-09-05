import 'package:equatable/equatable.dart';

import 'package:qivi_app/src/model/entity/entity.dart';

abstract class EditAddressState extends Equatable {
  const EditAddressState();

  @override
  List<Object> get props => [];
}

class EditAddressLoading extends EditAddressState {}

class EditAddressLoaded extends EditAddressState {
  List<UserOrderInfo> infos;
  int currentChoice = 0;
  EditAddressLoaded(this.infos);

  @override
  List<Object> get props {
    return [infos];
  }

  @override
  String toString() => 'EditAddressLoaded(infos: $infos)';
}

class EditAddressNotLoaded extends EditAddressState {
  final String e;

  const EditAddressNotLoaded(this.e);

  @override
  String toString() {
    return 'EditAddressNotLoaded{e: $e}';
  }
}
