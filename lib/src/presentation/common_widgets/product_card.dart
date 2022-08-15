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
            .add(LoadProductInfo(product.id));
        Navigator.of(context)
            .pushNamed(AppRouter.PRODUCT_INFO, arguments: product);
      },
      child: Container(
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.only(right: 10, left: 10),
          width: MediaQuery.of(context).size.width * 0.45,
          height: MediaQuery.of(context).size.height * 0.22,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              product.image == null
                  ? Image(
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.14,
                      image: const AssetImage(
                        'assets/logo-qivi.png',
                      ),
                    )
                  : Image.network(
                      product.image!,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.14,
                    ),
              Text(
                product.name,
                style: FONT_CONST.REGULAR_BLACK2_12,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                // alignment: Alignment.center,
                child: Text(
                    "${product.prices![0].price}đ/${product.prices![0].sKU} ",
                    style: FONT_CONST.REGULAR_DEFAULT_14),
              ),
            ],
          )),
    );
  }
}
