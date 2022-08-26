import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:qivi_app/src/model/entity/cart_item.dart';
import 'package:qivi_app/src/model/local/hive_provider.dart';
import 'package:qivi_app/src/model/local/repo/cart_item_repo.dart';
import 'package:qivi_app/src/presentation/router.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';
import 'package:qivi_app/src/utils/my_dialog.dart';

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
      return Stack(children: [
        Column(
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
        ),
        Positioned(bottom: 0, right: 0, left: 0, child: _buildBuyOption())
      ]);
    }
  }

  Widget _buildBuyOption() {
    return ValueListenableBuilder<Box<CartItem>>(
      valueListenable: HiveProvider.getCartItems().listenable(),
      builder: (context, box, _) {
        final carts = box.values.toList().cast<CartItem>();
        int result = 0;
        carts
            .forEach(((element) => result += element.price * element.quantity));
        return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              boxShadow: [BoxShadow()],
            ),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Thành tiền : ", style: FONT_CONST.MEDIUM_BLACK2_18),
                    Text((result).toString(),
                        style: FONT_CONST.MEDIUM_BLACK2_18),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return COLOR_CONST.ORANGE2.withOpacity(0.9);
                              return COLOR_CONST
                                  .ORANGE2; // Use the component's default.
                            },
                          ),
                        ),
                        child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Text("Đặt hàng",
                                style: FONT_CONST.MEDIUM_WHITE
                                    .copyWith(fontSize: 20))),
                        onPressed: () {
                          Navigator.of(context).pushNamed(AppRouter.ORDER);
                        })
                  ],
                ),
              ],
            ));
      },
    );
  }

  Widget _buildCartItem(
    BuildContext context,
    CartItem cart,
  ) {
    // final date = DateFormat.yMMMd().format(CartItem.createdDate);
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (direction) {
        MyDialog.deleteDialog(context, () {
          CartItemLocalRepository.deleteCartItemFromLocal(cart.priceId);
        }, "Xoá sản phẩm");
      },
      background: Container(color: Colors.red),
      child: ExpansionTile(
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
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  color: COLOR_CONST.GRAY8.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (cart.quantity > 1) {
                          setState(() {
                            CartItemLocalRepository.editCartItemToLocal(
                                cartItem: cart, quantity: cart.quantity - 1);
                          });
                        } else {
                          setState(() {
                            CartItemLocalRepository.deleteCartItemFromLocal(
                                cart.priceId);
                          });
                        }
                      },
                      child: const Icon(FontAwesomeIcons.minus, size: 17),
                    ),
                    Text(cart.quantity.toString(),
                        style: FONT_CONST.REGULAR.copyWith(fontSize: 20)),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          CartItemLocalRepository.editCartItemToLocal(
                              cartItem: cart, quantity: cart.quantity + 1);
                        });
                      },
                      child: const Icon(FontAwesomeIcons.plus, size: 17),
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
        // children: <Widget>[
        //   GestureDetector(
        //     onTap: () {
        //       MyDialog.deleteDialog(context, () {
        //         CartItemLocalRepository.deleteCartItemFromLocal(cart.priceId);
        //       }, "Xoá sản phẩm");
        //     },
        //     child: Container(
        //         padding: const EdgeInsets.only(top: 10, bottom: 10),
        //         width: MediaQuery.of(context).size.width,
        //         color: COLOR_CONST.RED2,
        //         child: Center(
        //             child:
        //                 Text("Xoá sản phẩm", style: FONT_CONST.MEDIUM_WHITE_14))),
        //   )
        // ],
      ),
    );
  }
}
