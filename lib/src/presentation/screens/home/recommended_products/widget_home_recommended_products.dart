import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/model/entity/product.dart';
import 'package:qivi_app/src/presentation/common_widgets/common_widgets.dart';
import 'package:qivi_app/src/presentation/screens/home/recommended_products/bloc/bloc.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

class WidgetHomeRecommendedProducts extends StatelessWidget {
  WidgetHomeRecommendedProducts({Key? key}) : super(key: key);
  List<Product> items = [];
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: COLOR_CONST.WHITE),
      margin: const EdgeInsets.only(bottom: 10),
      child: BlocBuilder<RecommendedProductsBloc, RecommendedProductsState>(
        builder: (context, state) {
          if (state is RecommendedProductsLoaded) {
            items = state.products;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sản phẩm mới ",
                            style: FONT_CONST.SEMIBOLD_BLACK_18),
                        Text("Xem thêm ", style: FONT_CONST.REGULAR_BLACK2_12),
                      ],
                    )),
                const SizedBox(height: 5),
                _buildListProduct(context)
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  _buildListProduct(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.26,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var item = items[index];

          return ProductCard(item);
        },
        physics: const BouncingScrollPhysics(),
        itemCount: items.length,
      ),
    );
  }
}
