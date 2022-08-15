import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/repo/product_repository.dart';
import 'package:qivi_app/src/presentation/screens/home/bloc/bloc.dart';
import 'package:qivi_app/src/presentation/screens/product_info/buy_option/widget_buy_option.dart';
import 'package:qivi_app/src/presentation/screens/product_info/widgets/product_info_desc.dart';
import 'package:qivi_app/src/utils/my_const/FONT_CONST.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

import 'bloc/bloc.dart';
import 'buy_option/bloc/bloc.dart';
import 'widgets/widgets.dart';

class ProductInfoScreen extends StatelessWidget {
  ProductInfoScreen(this.product, {Key? key}) : super(key: key);
  final Product product;
  late ProductRepository repo;
  late BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context = context;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BuyOptionBloc(),
        ),
      ],
      child: SafeArea(
          child: Scaffold(
              appBar: AppBar(),
              body: Container(
                color: COLOR_CONST.BASE,
                child: BlocProvider<ProductInfoBloc>(
                  create: (context) => ProductInfoBloc(
                    repo: RepositoryProvider.of<ProductRepository>(context),
                  ),
                  child: BlocConsumer<ProductInfoBloc, ProductInfoState>(
                      buildWhen: (prev, current) {
                    print(current);
                    return current is ProductInfoLoaded;
                  }, listener: (context, state) {
                    if (state is ProductInfoLoaded) {
                      // BlocProvider.of<HomeCategoriesBloc>(context)
                      //     .add(DisplayHomeCategories(state.response.categories));
                      // BlocProvider.of<RecommendedProductsBloc>(context).add(
                      //     DisplayRecommendedProducts(state.response.recommendedProducts));
                    }
                  }, builder: (context, state) {
                    return _buildContent();
                  }),
                ),
              ))),
    );
  }

  Widget _buildContent() {
    return Stack(
      children: [
        ListView(children: [
          ProductInfoImage(product.image!),
          ProductInfoDescriptions(product),
        ]),
        WidgetBuyOption(product.prices![0]),

        // _buildBuyOption(product),
      ],
    );
  }
}
