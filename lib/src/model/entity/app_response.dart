import 'package:equatable/equatable.dart';

class AppResponse<T> extends Equatable {
  T? data;
  String? message;
  AppResponse({this.data, this.message});

  @override
  List<Object?> get props => [];

  @override
  String toString() => 'AppResponse(data: $data, message: $message)';
}
