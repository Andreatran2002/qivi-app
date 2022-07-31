import 'package:equatable/equatable.dart';
import 'package:qivi_bill/src/model/entity/entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bill.g.dart';

@JsonSerializable()
class Bill extends Equatable {
  String id;
  String customerId;
  String note;
  List<ProductPrice> orderItems;
  DateTime createdAt = DateTime.now();
  double total;
  Bill({
    required this.id,
    required this.customerId,
    required this.note,
    required this.orderItems,
    required this.total,
  });
  factory Bill.fromJson(Map<String, dynamic> json) => _$BillFromJson(json);

  Map<String, dynamic> toJson() => _$BillToJson(this);

  @override
  List<Object?> get props => [id, customerId, note, orderItems, total];
}
