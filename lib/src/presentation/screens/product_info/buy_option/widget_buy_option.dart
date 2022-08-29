import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:qivi_app/src/model/entity/cart_item.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/local/hive_provider.dart';
import 'package:qivi_app/src/model/local/repo/cart_item_repo.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

import 'bloc/bloc.dart';

class WidgetBuyOption extends StatelessWidget {
  WidgetBuyOption(this.productPrice, this.name, this.image, {Key? key})
      : super(key: key);
  final String name;
  final String image;
  final ProductPrice productPrice;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BuyOptionBloc(),
      child: BlocBuilder<BuyOptionBloc, int>(
        builder: (context, state) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                boxShadow: [BoxShadow()],
              ),
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Thành tiền : ", style: FONT_CONST.MEDIUM_BLACK2_18),
                      Text((productPrice.price * state).toString(),
                          style: FONT_CONST.MEDIUM_BLACK2_18),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5, bottom: 5),
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            color: COLOR_CONST.GRAY8.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  BlocProvider.of<BuyOptionBloc>(context)
                                      .add(BuyOptionDecrementPressed());
                                },
                                child: const Icon(FontAwesomeIcons.minus),
                              ),
                              Text(state.toString(),
                                  style: FONT_CONST.REGULAR
                                      .copyWith(fontSize: 24)),
                              GestureDetector(
                                onTap: () {
                                  BlocProvider.of<BuyOptionBloc>(context)
                                      .add(BuyOptionIncrementPressed());
                                },
                                child: const Icon(FontAwesomeIcons.plus),
                              )
                            ],
                          )),
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
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Text("Mua",
                                  style: FONT_CONST.MEDIUM_WHITE
                                      .copyWith(fontSize: 20))),
                          onPressed: () {
                            CartItemLocalRepository.addCartItemToLocal(
                                quantity: state,
                                priceId: productPrice.id,
                                image: image,
                                price: productPrice.price,
                                name: name,
                                sku: productPrice.sKU);
                            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            //   content: Text('Snackbar message'),
                            //   behavior: SnackBarBehavior.floating,
                            //   shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(24),
                            //   ),
                            //   margin: EdgeInsets.only(
                            //     bottom:
                            //         MediaQuery.of(context).size.height - 100,
                            //   ),
                            // ));
                            // final items = HiveProvider().Box<CartItem>.values.toList().cast<CartItem>();
                          })
                    ],
                  ),
                ],
              ));
        },
      ),
    );
  }
}
