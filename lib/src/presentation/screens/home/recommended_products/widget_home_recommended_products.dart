import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/model/entity/product.dart';
import 'package:qivi_app/src/presentation/common_widgets/common_widgets.dart';
import 'package:qivi_app/src/presentation/screens/home/recommended_products/bloc/bloc.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

class WidgetHomeRecommendedProducts extends StatelessWidget {
  WidgetHomeRecommendedProducts({Key? key}) : super(key: key);
  List<Product> items = [];
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedProductsBloc, RecommendedProductsState>(
      builder: (context, state) {
        if (state is RecommendedProductsLoaded) {
          items = state.products;

          return Column(
            children: [Text("Sản phẩm Hot "), _buildListProduct()],
          );
        } else {
          return Container();
        }
      },
    );
  }

  _buildListProduct() {
    return Container(
      height: 25,
      margin: const EdgeInsets.all(10),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var item = items[index];

          return WidgetChip(item.name);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 20);
        },
        physics: const BouncingScrollPhysics(),
        itemCount: items.length,
      ),
    );
  }
}
