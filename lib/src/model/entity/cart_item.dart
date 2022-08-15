import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_item.g.dart';

@HiveType(typeId: 0)
class CartItem extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String priceId;
  @HiveField(2)
  String image;
  @HiveField(3)
  int quantity;
  @HiveField(4)
  double total;
  CartItem({
    required this.id,
    required this.quantity,
    required this.priceId,
    required this.image,
    required this.total,
  });
}
