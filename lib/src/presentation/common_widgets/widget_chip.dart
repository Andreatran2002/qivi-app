import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

class WidgetChip extends StatelessWidget {
  WidgetChip(this.chip, {this.color, Key? key}) : super(key: key);
  final String chip;
  // VoidCallback? callback = () => {};
  Color? color = COLOR_CONST.ORANGE2;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
        decoration: BoxDecoration(
            color: COLOR_CONST.ORANGE2,
            borderRadius: BorderRadius.circular(10)),
        child: Text(chip, style: FONT_CONST.MEDIUM_WHITE_14));
  }
}
