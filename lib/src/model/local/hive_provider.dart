import 'package:hive_flutter/hive_flutter.dart';
import 'package:qivi_app/src/model/entity/cart_item.dart';

class HiveProvider {
  static Box<CartItem> getCartItems() => Hive.box<CartItem>('cart_items');
}
