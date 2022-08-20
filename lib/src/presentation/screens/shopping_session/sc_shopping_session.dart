import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:qivi_app/src/model/entity/cart_item.dart';
import 'package:qivi_app/src/model/local/hive_provider.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

class ShoppingSessionScreen extends StatefulWidget {
  const ShoppingSessionScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingSessionScreen> createState() => _ShoppingSessionScreenState();
}

class _ShoppingSessionScreenState extends State<ShoppingSessionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Giỏ hàng")),
        body: Container(
          child: ValueListenableBuilder<Box<CartItem>>(
            valueListenable: HiveProvider.getCartItems().listenable(),
            builder: (context, box, _) {
              final carts = box.values.toList().cast<CartItem>();

              return _buildContent(carts);
            },
          ),
        ));
  }

  Widget _buildContent(List<CartItem> carts) {
    if (carts.isEmpty) {
      return const Center(
        child: Text(
          'Chưa có sản phẩm ',
          style: TextStyle(fontSize: 24),
        ),
      );
    } else {
      return Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: carts.length,
              itemBuilder: (BuildContext context, int index) {
                final cart = carts[index];

                return _buildCartItem(context, cart);
              },
            ),
          ),
        ],
      );
    }
  }

  Widget _buildCartItem(
    BuildContext context,
    CartItem cart,
  ) {
    // final date = DateFormat.yMMMd().format(CartItem.createdDate);
    return ExpansionTile(
      title: Text(
        cart.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: Image.asset(
        'assets/images/product.png',
        // width: MediaQuery.of(context).size.width * 0.3,
        // height: MediaQuery.of(context).size.width * 0.3,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(cart.sku),
          Container(
              padding:
                  const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              width: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                color: COLOR_CONST.GRAY8.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(FontAwesomeIcons.minus),
                  ),
                  Text(cart.quantity.toString(),
                      style: FONT_CONST.REGULAR.copyWith(fontSize: 20)),
                  GestureDetector(
                    onTap: () {
                      // BlocProvider.of<BuyOptionBloc>(context)
                      //     .add(BuyOptionIncrementPressed());
                    },
                    child: const Icon(FontAwesomeIcons.plus),
                  )
                ],
              )),
        ],
      ),
      trailing: Text(cart.price.toString(),
          style: FONT_CONST.MEDIUM.copyWith(
              color: COLOR_CONST.RED2,
              fontSize: 18,
              fontStyle: FontStyle.italic)),
      children: <Widget>[
        Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            width: MediaQuery.of(context).size.width,
            color: COLOR_CONST.RED2,
            child: Center(
                child: Text("Xoá sản phẩm", style: FONT_CONST.MEDIUM_WHITE_14)))
      ],
    );
  }
}
