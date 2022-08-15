import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/presentation/common_widgets/common_widgets.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

class ProductInfoDescriptions extends StatefulWidget {
  ProductInfoDescriptions(this.product, {Key? key}) : super(key: key);
  Product product;

  @override
  State<ProductInfoDescriptions> createState() =>
      _ProductInfoDescriptionsState();
}

class _ProductInfoDescriptionsState extends State<ProductInfoDescriptions> {
  late ProductPrice current;

  @override
  Widget build(BuildContext context) {
    current = widget.product.prices![0];

    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(widget.product.name, style: FONT_CONST.SEMIBOLD_BLACK_24),
        // Text("Đã bán : 0 sản phẩm",
        //     style: FONT_CONST.REGULAR_BLACK2_12.copyWith(
        //         fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
        _buildDesc(),
        _buildProductSKU(),
      ]),
    );
  }

  Widget _buildDesc() {
    return Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: COLOR_CONST.GRAY8.withOpacity(0.16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mô tả sản phẩm", style: FONT_CONST.MEDIUM_BLACK2_16),
            Text(widget.product.description!)
          ],
        ));
  }

  Widget _buildProductSKU() {
    return Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: COLOR_CONST.GRAY8.withOpacity(0.16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Chọn đơn vị sản phẩm", style: FONT_CONST.MEDIUM_BLACK2_16),
            DropdownButton<ProductPrice>(
              value: current,
              icon: const Icon(Icons.arrow_downward_sharp),
              elevation: 16,
              style: const TextStyle(color: Colors.black87),
              underline: Container(
                height: 2,
                color: Colors.redAccent,
              ),
              onChanged: (ProductPrice? newValue) {
                setState(() {
                  current = newValue!;
                });
              },
              items: widget.product.prices!
                  .map<DropdownMenuItem<ProductPrice>>((ProductPrice value) {
                return DropdownMenuItem<ProductPrice>(
                  value: value,
                  child: Text(value.sKU),
                );
              }).toList(),
            )
          ],
        ));
  }
}
