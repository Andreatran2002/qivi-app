import 'package:qivi_app/src/model/entity/cart_item.dart';
import 'package:qivi_app/src/model/local/hive_provider.dart';
import 'package:uuid/uuid.dart';

class CartItemLocalRepository {
  void addCartItemToLocal(
      {required int quantity,
      required String priceId,
      required String image,
      required int price,
      required String name,
      required String sku}) async {
    final cartItem = CartItem(
        name: name,
        quantity: quantity,
        priceId: priceId,
        image: image,
        price: price,
        sku: sku);

    final box = HiveProvider.getCartItems();
    box.put(priceId, cartItem);
    print(box.keys);
    print(box.get(cartItem.priceId));
  }

  void editCartItemToLocal(
      {required CartItem cartItem,
      required int quantity,
      required String sku}) async {
    cartItem.quantity = quantity;
    cartItem.sku = sku;

    final box = HiveProvider.getCartItems();

    box.put(cartItem.quantity, cartItem);
    print(box.get(cartItem.priceId));
  }

  void deleteCartItemFromLocal(String priceId) {
    final box = HiveProvider.getCartItems();
    box.delete(priceId);
    print(box.keys);
  }
}
