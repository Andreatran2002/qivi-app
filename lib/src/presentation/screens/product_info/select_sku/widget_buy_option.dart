// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:qivi_app/src/model/entity/entity.dart';
// import 'package:qivi_app/src/presentation/screens/product_info/buy_option/bloc/bloc.dart';
// import 'package:qivi_app/src/utils/my_const/my_const.dart';

// import 'bloc/bloc.dart';

// class WidgetBuyOption extends StatelessWidget {
//   const WidgetBuyOption(this.productPrice, {Key? key}) : super(key: key);
//   final ProductPrice productPrice;
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<BuyOptionBloc, int>(
//       builder: (context, state) {
//         return Container(
//         margin: const EdgeInsets.only(top: 15),
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: COLOR_CONST.GRAY8.withOpacity(0.16),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text("Chọn đơn vị sản phẩm", style: FONT_CONST.MEDIUM_BLACK2_16),
//             DropdownButton<ProductPrice>(
//               value: state.co,
//               icon: const Icon(Icons.arrow_downward_sharp),
//               elevation: 16,
//               style: const TextStyle(color: Colors.black87),
//               underline: Container(
//                 height: 2,
//                 color: Colors.redAccent,
//               ),
//               onChanged: (ProductPrice? newValue) {
//                 setState(() {
//                   print(newValue);
//                   current = newValue!;
//                 });
//               },
//               items: widget.product.prices!
//                   .map<DropdownMenuItem<ProductPrice>>((ProductPrice value) {
//                 return DropdownMenuItem<ProductPrice>(
//                   value: value,
//                   child: Text(value.sKU),
//                 );
//               }).toList(),
//             )
//           ],
//         ));
//       },
//     );
//   }
// }
