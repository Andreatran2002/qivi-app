import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'page_info.g.dart';

@JsonSerializable()
class PageInfo extends Equatable {
  final String startCursor;
  final String endCursor;
  final bool hasNextPage;
  final bool hasPreviousPage;

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);

  PageInfo(
      this.startCursor, this.endCursor, this.hasNextPage, this.hasPreviousPage);

  Map<String, dynamic> toJson() => _$PageInfoToJson(this);
  @override
  List<Object?> get props =>
      [hasNextPage, hasPreviousPage, startCursor, endCursor];

  @override
  String toString() {
    return 'PageInfo(startCursor: $startCursor, endCursor: $endCursor, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage)';
  }
}
