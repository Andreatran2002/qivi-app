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
      child: BlocBuilder<RecommendedProductsBloc, RecommendedProductsState>(
        builder: (context, state) {
          if (state is RecommendedProductsLoaded) {
            items = state.products;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Text("Sản phẩm mới ",
                        style: FONT_CONST.SEMIBOLD_BLACK_18)),
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
      height: MediaQuery.of(context).size.height * 0.22,
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

class ProductCard extends StatelessWidget {
  const ProductCard(this.product, {Key? key}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height * 0.22,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.14,
              image: const AssetImage(
                'assets/logo-qivi.png',
              ),
            ),
            Text(
              product.name,
              maxLines: 2,
            ),
            Container(
              // alignment: Alignment.center,
              child: Text(
                  "${product.prices![0].price}đ/${product.prices![0].sKU} ",
                  style: FONT_CONST.REGULAR_DEFAULT_14),
            ),
          ],
        ));
  }
}
