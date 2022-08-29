import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/repo/repo.dart';
import 'package:qivi_app/src/presentation/router.dart';
import 'package:qivi_app/src/presentation/screens/product_info/bloc/bloc.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(this.product, {Key? key}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ProductInfoBloc(repo: RepositoryProvider.of<ProductRepository>(context))
            .add(OpenScreen());
        Navigator.of(context)
            .pushNamed(AppRouter.PRODUCT_INFO, arguments: product);
      },
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: COLOR_CONST.BASE,
          ),
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 10,
          ),
          width: MediaQuery.of(context).size.width * 0.42,
          height: MediaQuery.of(context).size.height * 0.3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: product.id,
                child: product.image == null
                    ? Image(
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.15,
                        image: const AssetImage(
                          'assets/logo-qivi.png',
                        ),
                      )
                    : Image.network(
                        product.image!,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.15,
                      ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: FONT_CONST.SEMIBOLD_BLACK_14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    product.category != null
                        ? Text(
                            product.category!.name,
                            style: FONT_CONST.REGULAR_BLACK2_10,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        : Container(),
                    RichText(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(children: [
                        TextSpan(
                            text: "₫",
                            style: FONT_CONST.MEDIUM_DEFAULT_16
                                .copyWith(color: Colors.orangeAccent)),
                        TextSpan(
                          text: "${product.prices![0].price}",
                        ),
                        TextSpan(
                            text: "/${product.prices![0].sKU} ",
                            style: FONT_CONST.MEDIUM_BLACK2_14
                                .copyWith(color: Colors.black38)),
                      ], style: FONT_CONST.MEDIUM_BLACK2_14),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
