import 'package:equatable/equatable.dart';

abstract class EditAddressEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadUserOrderInfo extends EditAddressEvent {}

class ChangeOrderInfo extends EditAddressEvent {}

class ClickBtnCreateOrderInfo extends EditAddressEvent {}

class OpenedCreateInfoScreen extends EditAddressEvent {}
