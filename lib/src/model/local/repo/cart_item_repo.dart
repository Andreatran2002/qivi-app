import 'package:qivi_app/src/model/entity/cart_item.dart';
import 'package:qivi_app/src/model/local/hive_provider.dart';
import 'package:uuid/uuid.dart';

class CartItemLocalRepository {
  Uuid uid = Uuid();
  Future addCartItemToLocal(
      int quantity, String priceId, String image, double total) async {
    final cartItem = CartItem(
        id: uid.v4(),
        quantity: quantity,
        priceId: priceId,
        image: image,
        total: total);

    final box = HiveProvider.getCartItems();
    box.add(cartItem);
  }
}
