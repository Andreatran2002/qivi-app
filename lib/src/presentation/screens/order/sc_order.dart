import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:qivi_app/src/model/entity/cart_item.dart';
import 'package:qivi_app/src/model/local/hive_provider.dart';
import 'package:qivi_app/src/model/local/repo/cart_item_repo.dart';
import 'package:qivi_app/src/presentation/router.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';
import 'package:qivi_app/src/utils/my_dialog.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen(this.amount, {Key? key}) : super(key: key);
  final int amount;
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  Map infos = {
    "Khách hàng ": "Phương Vy ",
    "Số điện thoại ": "0788892441",
    "Địa chỉ giao hàng  ": "45 Lý Thường Kiệt ,Phú Quốc , Kiên Giang",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Thông tin đặt hàng")),
        body: CustomScrollView(slivers: [
          SliverToBoxAdapter(
              child: Container(
            padding: EdgeInsets.only(right: 14, left: 14, bottom: 14),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              // color: COLOR_CONST.BASE,
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Địa chỉ giao hàng ",
                              style: FONT_CONST.MEDIUM_BLACK2_16),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(AppRouter.EDIT_ADDRESS);
                              },
                              child: Text("Thay đổi")),
                        ]),
                    const SizedBox(height: 5),
                    _buildRowInfo("Khách hàng ", "Phương Vy "),
                    _buildRowInfo("Số điện thoại ", "0788892441"),
                    _buildRowInfo(
                      "Địa chỉ giao hàng  ",
                      "45 Lý Thường Kiệt ,Phú Quốc , Kiên Giang",
                    ),
                  ],
                ),
              ],
            ),
          )),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(right: 14, bottom: 14, left: 14),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                // color: COLOR_CONST.BASE,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sản phẩm   ", style: FONT_CONST.MEDIUM_BLACK2_16),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Thay đổi")),
                    ],
                  ),
                  // const SizedBox(height: 5),
                  ValueListenableBuilder<Box<CartItem>>(
                    valueListenable: HiveProvider.getCartItems().listenable(),
                    builder: (context, box, _) {
                      final carts = box.values.toList().cast<CartItem>();

                      return _buildContent(carts);
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tổng số tiền:", style: FONT_CONST.MEDIUM_BLACK2_16),
                      Text(
                        widget.amount.toString(),
                        style: FONT_CONST.MEDIUM_BLACK2_18
                            .copyWith(color: COLOR_CONST.RED2),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
              padding: const EdgeInsets.all(10),
              sliver: SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(bottom: 100),
                  child: TextButton(
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
                        // width: MediaQuery.of(context).size.width * 0.7,
                        child: Text("Đặt hàng",
                            style: FONT_CONST.MEDIUM_WHITE
                                .copyWith(fontSize: 20))),
                    onPressed: () {
                      // Navigator.of(context)
                      //     .pushNamed(AppRouter.ORDER, arguments: result);
                    },
                  ),
                ),
              ))
        ]));
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
      return ListView.builder(
        shrinkWrap: true,
        itemCount: carts.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          final cart = carts[index];

          return _buildCartItem(context, cart);
        },
      );
    }
  }

  Widget _buildCartItem(
    BuildContext context,
    CartItem cart,
  ) {
    // final date = DateFormat.yMMMd().format(CartItem.createdDate);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.65,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(cart.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: FONT_CONST.MEDIUM_BLACK2_16),
              Text(cart.sku + "x" + cart.quantity.toString(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: FONT_CONST.REGULAR_BLACK2_12),
            ],
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          // color: Colors.black,
          width: MediaQuery.of(context).size.width * 0.2,
          child: Text(cart.price.toString() + "đ",
              style: FONT_CONST.MEDIUM_BLUE_14.copyWith()),
        )
      ],
    );
    // return ListTile(
    //   title: Text(
    //     cart.name,
    //     maxLines: 1,
    //     overflow: TextOverflow.ellipsis,
    //   ),
    //   subtitle: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       Text(cart.sku),
    //     ],
    //   ),
    //   trailing: Text(cart.price.toString(),
    //       style: FONT_CONST.MEDIUM.copyWith(
    //           color: COLOR_CONST.RED2,
    //           fontSize: 18,
    //           fontStyle: FontStyle.italic)),
    // );
  }

  Widget _buildRowInfo(String title, String info) {
    return Container(
      margin: const EdgeInsets.only(bottom: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text(title)),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45,
              child: Text(info
                  // maxLines: 1,
                  // overflow: TextOverflow.ellipsis,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
