import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductInfoImage extends StatelessWidget {
  const ProductInfoImage(this.image, {Key? key}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.network(image,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.27,
        fit: BoxFit.cover);
  }
}
