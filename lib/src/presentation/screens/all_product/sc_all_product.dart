import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/repo/category_repository.dart';
import 'package:qivi_app/src/model/repo/client_repository.dart';
import 'package:qivi_app/src/utils/my_const/COLOR_CONST.dart';
import 'package:qivi_app/src/utils/my_const/FONT_CONST.dart';

class AllProductScreen extends StatefulWidget {
  AllProductScreen(this.currentCategory, {Key? key}) : super(key: key);
  Categoryy currentCategory;

  @override
  State<AllProductScreen> createState() => _AllProductScreenState();
}

class _AllProductScreenState extends State<AllProductScreen> {
  late Categoryy currentCategory;
  late CategoryRepository repo;
  late List<Categoryy> categories;
  @override
  void initState() {
    currentCategory = widget.currentCategory;
    repo = RepositoryProvider.of<CategoryRepository>(context);
    super.initState();
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
                  title: Text("Tất cả sản phẩm"),
                ),
                body: TabBarView(
                    children: categories
                        .map((item) => Text(
                              item.name,
                            ))
                        .toList()),
              ),
            );
          }
          if (snapshot.hasError) {
            return Text("Error");
          }
          return Container();
        });
  }
}
