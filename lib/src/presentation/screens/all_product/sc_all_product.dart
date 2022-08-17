import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/repo/category_repository.dart';
import 'package:qivi_app/src/model/repo/client_repository.dart';
import 'package:qivi_app/src/model/repo/repo.dart';
import 'package:qivi_app/src/presentation/router.dart';
import 'package:qivi_app/src/presentation/screens/seasrch_product/widgets/search_product.dart';
import 'package:qivi_app/src/utils/my_const/COLOR_CONST.dart';
import 'package:qivi_app/src/utils/my_const/FONT_CONST.dart';

import 'product_in_category/widget_product_in_category.dart';

class AllProductScreen extends StatefulWidget {
  AllProductScreen(this.index, {Key? key}) : super(key: key);
  int index;

  @override
  State<AllProductScreen> createState() => _AllProductScreenState();
}

class _AllProductScreenState extends State<AllProductScreen>
    with SingleTickerProviderStateMixin {
  late CategoryRepository repo;
  late ProductRepository productRepo;
  late List<Categoryy> categories;
  @override
  void initState() {
    repo = RepositoryProvider.of<CategoryRepository>(context);
    productRepo = RepositoryProvider.of<ProductRepository>(context);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Categoryy>>(
        future: repo.getCategories(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            categories = snapshot.data!;

            return DefaultTabController(
              length: categories.length,
              child: Scaffold(
                appBar: AppBar(
                  actions: [
                    IconButton(
                        onPressed: () {
                          // Navigator.of(context)
                          //     .pushNamed(AppRouter.SEARCH_PRODUCTS);
                          showSearch(
                              context: context,
                              delegate: SearchProduct(productRepo));
                        },
                        icon: Icon(Icons.search))
                  ],
                  bottom: TabBar(
                      indicatorColor: Colors.amberAccent,
                      labelColor: COLOR_CONST.BLACK,
                      labelStyle: FONT_CONST.REGULAR_BLACK2_12,
                      isScrollable: true,
                      tabs: categories
                          .map((item) => Tab(
                                text: item.name,
                              ))
                          .toList()),
                  title: const Text("Tất cả sản phẩm"),
                ),
                body: TabBarView(
                    children: categories
                        .map((item) => WidgetProductInCategory(item.categoryId))
                        .toList()),
              ),
            );
          }
          if (snapshot.hasError) {
            return const Text("Error");
          }
          return Scaffold(
              appBar: AppBar(),
              body: const Center(child: CircularProgressIndicator()));
        });
  }
}
