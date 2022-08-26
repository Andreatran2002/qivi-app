import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:qivi_app/src/model/entity/cart_item.dart';
import 'package:qivi_app/src/model/local/hive_provider.dart';
import 'package:qivi_app/src/model/local/repo/cart_item_repo.dart';
import 'package:qivi_app/src/presentation/router.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

class ShoppingCart extends StatelessWidget {
  ShoppingCart({Key? key}) : super(key: key);
  late BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context = context;
    return Container(
        margin: const EdgeInsets.all(15),
        decoration: const BoxDecoration(),
        child: GestureDetector(
            onTap: _openSessionShopping,
            child: ValueListenableBuilder<Box<CartItem>>(
              valueListenable: HiveProvider.getCartItems().listenable(),
              builder: (context, box, _) {
                final count = box.length;

                return Badge(
                  badgeContent: Text(
                      CartItemLocalRepository.countItem().toString(),
                      style: FONT_CONST.REGULAR_WHITE_10),
                  child: const Icon(FontAwesomeIcons.cartShopping, size: 20),
                );
              },
            )));
  }

  void _openSessionShopping() =>
      Navigator.of(_context).pushNamed(AppRouter.SHOPPING_SESSION);
}
