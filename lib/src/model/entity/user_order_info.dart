import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_order_info.g.dart';

@JsonSerializable()
class UserOrderInfo extends Equatable {
  String id;
  String userId;
  String recipient;
  String phoneNumber;
  String address;

  UserOrderInfo({
    required this.id,
    required this.userId,
    required this.phoneNumber,
    required this.recipient,
    required this.address,
  });

  factory UserOrderInfo.fromJson(Map<String, dynamic> json) =>
      _$UserOrderInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserOrderInfoToJson(this);
  @override
  @override
  List<Object?> get props => [id, userId, phoneNumber, recipient, address];

  @override
  String toString() {
    return 'UserOrderInfo(id: $id, userId: $userId, recipient: $recipient, phoneNumber: $phoneNumber, address: $address)';
  }
}
