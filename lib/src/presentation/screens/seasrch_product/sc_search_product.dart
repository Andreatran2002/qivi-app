import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/repo/category_repository.dart';
import 'package:qivi_app/src/model/repo/client_repository.dart';
import 'package:qivi_app/src/presentation/screens/seasrch_product/widgets/search_product.dart';
import 'package:qivi_app/src/utils/my_const/COLOR_CONST.dart';
import 'package:qivi_app/src/utils/my_const/FONT_CONST.dart';

class SearchProductScreen extends StatefulWidget {
  SearchProductScreen({Key? key}) : super(key: key);

  @override
  State<SearchProductScreen> createState() => _SearchProductScreenState();
}

class _SearchProductScreenState extends State<SearchProductScreen> {
  late Categoryy currentCategory;
  late CategoryRepository repo;
  TextEditingController editingController = TextEditingController();

  late List<Categoryy> categories;
  @override
  void initState() {
    repo = RepositoryProvider.of<CategoryRepository>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          title: TextField(
            onChanged: (value) {},
            onTap: () {},
            controller: editingController,
            decoration: InputDecoration(
              labelText: "Tìm kiếm ",
              hintText: "Nhập sản phẩm tìm kiếm ",
            ),
          ),
        ),
        body: Container());
  }
}
