import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/repo/product_repository.dart';
import 'package:qivi_app/src/presentation/screens/product_info/buy_option/widget_buy_option.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

import 'bloc/bloc.dart';
import 'buy_option/bloc/bloc.dart';
import 'widgets/widgets.dart';

class ProductInfoScreen extends StatefulWidget {
  ProductInfoScreen(this.product, {Key? key}) : super(key: key);
  final Product product;

  @override
  State<ProductInfoScreen> createState() => _ProductInfoScreenState();
}

class _ProductInfoScreenState extends State<ProductInfoScreen> {
  late ProductRepository repo;
  late BuildContext _context;
  late ProductPrice currentSku;
  @override
  void initState() {
    currentSku = widget.product.prices![0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.product.name),
        ),
        body: Container(
          color: COLOR_CONST.BASE,
          child: BlocConsumer<ProductInfoBloc, ProductInfoState>(
              buildWhen: (prev, current) {
            return current is InitialProductInfoState;
          }, listenWhen: (prev, current) {
            return current is OpenBuyProductScreen;
          }, listener: (context, state) {
            _openBuyProduct();
          }, builder: (context, state) {
            return _buildContent(state);
          }),
        ));
  }

  Widget _buildContent(state) {
    return Stack(
      children: [
        ListView(children: [
          ProductInfoImage(widget.product.image!),
          ProductInfoDescriptions(widget.product),
          _buildProductSKU()
        ]),
        Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(color: COLOR_CONST.ORANGE2),
                child: TextButton(
                    onPressed: () => _open(),
                    child: Text("Thêm vào giỏ",
                        style: FONT_CONST.SEMIBOLD_WHITE_18))))
        // WidgetBuyOption(state.price)
      ],
    );
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
              value: currentSku,
              icon: const Icon(FontAwesomeIcons.caretDown),
              elevation: 16,
              style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.867)),
              underline: Container(
                height: 2,
                color: Colors.redAccent,
              ),
              onChanged: (ProductPrice? newValue) {
                setState(() {
                  print(newValue);
                  currentSku = newValue!;
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

  void _openBuyProduct() {
    BlocProvider.of<ProductInfoBloc>(_context).add(OpenedBuyProductScreen());
  }

  void _open() {
    showModalBottomSheet<void>(
      backgroundColor: COLOR_CONST.TRANS,
      context: _context,
      builder: (BuildContext context) {
        return WidgetBuyOption(currentSku);
      },
    );
  }
}
