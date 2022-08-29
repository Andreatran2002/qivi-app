import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/presentation/common_widgets/common_widgets.dart';
import 'package:qivi_app/src/presentation/router.dart';
import 'package:qivi_app/src/presentation/screens/home/home_categories/bloc/bloc.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

class WidgetHomeCategories extends StatelessWidget {
  List<Categoryy> items = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCategoriesBloc, HomeCategoriesState>(
      builder: (context, state) {
        if (state is HomeCategoriesLoaded) {
          items = state.categories;

          return _buildListCategory();
        } else {
          return Container();
        }
      },
    );
  }

  _buildListCategory() {
    return Container(
      height: 30,
      margin: const EdgeInsets.all(10),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var item = items[index];

          return GestureDetector(
              onTap: () => Navigator.of(context)
                  .pushNamed(AppRouter.ALL_PRODUCTS, arguments: index),
              child: WidgetChip(item.name));
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
