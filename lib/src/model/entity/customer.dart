import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'customer.g.dart';

@JsonSerializable()
class Customer extends Equatable {
  String name;
  String phoneNumber;
  String address;
  Customer({
    required this.name,
    required this.phoneNumber,
    required this.address,
  });
  @override
  List<Object?> get props => [name, phoneNumber, address];
  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
  @override
  String toString() {
    return 'Customer : name $name , phoneNumber $phoneNumber , address $address';
  }
}
