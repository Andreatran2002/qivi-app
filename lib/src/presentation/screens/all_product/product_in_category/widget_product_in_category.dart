import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/repo/repo.dart';
import 'package:qivi_app/src/presentation/common_widgets/common_widgets.dart';
import 'package:qivi_app/src/presentation/common_widgets/product_card_hozi.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

class WidgetProductInCategory extends StatefulWidget {
  WidgetProductInCategory(this.categoryId, {Key? key}) : super(key: key);
  String categoryId;
  @override
  State<WidgetProductInCategory> createState() =>
      _WidgetProductInCategoryState();
}

class _WidgetProductInCategoryState extends State<WidgetProductInCategory>
    with AutomaticKeepAliveClientMixin<WidgetProductInCategory> {
  List<Product> _products = [];
  String? endCursor;
  @override
  bool get wantKeepAlive => true;
  late ScrollController _controller;
  late ProductRepository repo;
  bool _hasNextPage = true;
  bool _isFirstLoadRunning = false;
  bool _isLoadMoreRunning = false;

  void _firstLoad() async {
    if (mounted) {
      setState(() {
        _isFirstLoadRunning = true;
      });
    }

    try {
      final res = await repo.getProductsByCategoryId(widget.categoryId, null);
      endCursor = res.pageInfo.endCursor;
      _hasNextPage = res.pageInfo.hasNextPage;

      setState(() {
        _products = res.products;
      });
    } catch (err) {
      print('Something went wrong');
      // print(err);
    }
    if (mounted) {
      setState(() {
        _isFirstLoadRunning = false;
      });
    }
  }

  void _loadMore() async {
    if (_hasNextPage == true &&
        _isFirstLoadRunning == false &&
        _isLoadMoreRunning == false &&
        _controller.position.extentAfter < 300) {
      if (mounted) {
        setState(() {
          _isLoadMoreRunning = true;
        });
      }
      try {
        final res =
            await repo.getProductsByCategoryId(widget.categoryId, endCursor);
        endCursor = res.pageInfo.endCursor;

        if (res.products.isNotEmpty) {
          if (mounted) {
            setState(() {
              _products.addAll(res.products);
              endCursor = res.pageInfo.endCursor;
              _hasNextPage = res.pageInfo.hasNextPage;
            });
          }
        } else {
          setState(() {
            _hasNextPage = false;
          });
        }
      } catch (err) {
        print('Something went wrong!');
        print(err.toString());
      }
      if (mounted) {
        setState(() {
          _isLoadMoreRunning = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_loadMore);
    super.dispose();
  }

  @override
  void initState() {
    repo = RepositoryProvider.of<ProductRepository>(context);
    _firstLoad();
    _controller = ScrollController()..addListener(_loadMore);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _isFirstLoadRunning
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 220,
                      mainAxisExtent: 200,
                      childAspectRatio: 6 / 5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  controller: _controller,
                  itemCount: 8,
                  itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                      ),
                      child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            // color: COLOR_CONST.BASE,
                          ),
                          // margin: const EdgeInsets.only(
                          //   left: 10,
                          //   right: 10,
                          //   top: 10,
                          // ),
                          width: MediaQuery.of(context).size.width * 0.42,
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              MySkeleton(0.5, 0.15),
                              MySkeleton(0.24, 0.02),
                              MySkeleton(0.42, 0.018),
                            ],
                          ))),
                ),
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 220,
                      mainAxisExtent: 200,
                      childAspectRatio: 6 / 5,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  controller: _controller,
                  itemCount: _products.length,
                  itemBuilder: (_, index) => ProductCard(_products[index]),
                ),
              ),

              // when the _loadMore function is running
              if (_isLoadMoreRunning == true)
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 40),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),

              // When nothing else to load
              if (_hasNextPage == false)
                Container(
                  padding: const EdgeInsets.only(top: 25, bottom: 30),
                  color: Colors.amber,
                  child: const Center(
                    child: Text('B???n ???? xem h???t m???t h??ng !'),
                  ),
                ),
            ],
          );
  }
}
