import 'package:equatable/equatable.dart';

abstract class SearchProductEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SearchProductKeyWordChanged extends SearchProductEvent {
  String keyWord;
  SearchProductKeyWordChanged(this.keyWord);
}
