import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qivi_bill/src/utils/my_const/my_const.dart';

class WidgetLogoQivi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      height: MediaQuery.of(context).size.height * 0.4,
      image: const AssetImage(
        'assets/logo-qivi.png',
      ),
    );
  }
}
