import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/repo/product_repository.dart';
import 'package:qivi_app/src/presentation/screens/home/bloc/bloc.dart';
import 'package:qivi_app/src/presentation/screens/product_info/widgets/product_info_desc.dart';
import 'package:qivi_app/src/utils/my_const/FONT_CONST.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

import 'bloc/bloc.dart';

class ProductInfoScreen extends StatelessWidget {
  ProductInfoScreen(this.product, {Key? key}) : super(key: key);
  final Product product;
  late ProductRepository repo;
  late BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context = context;
    return SafeArea(
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
            )));
  }

  Widget _buildContent() {
    return Stack(
      children: [
        _buildProductView(product),
        _buildBuyOption(product),
      ],
    );
  }

  Widget _buildProductView(Product product) {
    return ListView(children: [
      Image.network(product.image!,
          width: MediaQuery.of(_context).size.width,
          height: MediaQuery.of(_context).size.height * 0.27,
          fit: BoxFit.cover),
      ProductInfoDescriptions(product),

      // Text(
    ]);
  }

  Widget _buildBuyOption(Product product) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
          height: MediaQuery.of(_context).size.height * 0.2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [BoxShadow()],
          ),
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Thành tiền : ", style: FONT_CONST.MEDIUM_BLACK2_18),
                  Text("75000", style: FONT_CONST.MEDIUM_BLACK2_18),
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
                      width: MediaQuery.of(_context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: COLOR_CONST.GRAY8.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(FontAwesomeIcons.minus),
                          Text("5",
                              style: FONT_CONST.REGULAR.copyWith(fontSize: 24)),
                          const Icon(FontAwesomeIcons.plus),
                        ],
                      )),
                  TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed))
                              return COLOR_CONST.GREEN;
                            return COLOR_CONST
                                .GREEN3; // Use the component's default.
                          },
                        ),
                      ),
                      child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(_context).size.width * 0.35,
                          child: Text("Mua",
                              style: FONT_CONST.MEDIUM_WHITE
                                  .copyWith(fontSize: 20))),
                      onPressed: () {})
                ],
              ),
            ],
          )),
    );
  }
}
