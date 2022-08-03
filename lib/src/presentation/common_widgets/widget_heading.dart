import 'package:flutter/material.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

class WidgetHeading extends StatelessWidget {
  const WidgetHeading(this.title, this.link, {Key? key}) : super(key: key);
  final String title;
  final String link;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title.toUpperCase(), style: FONT_CONST.SEMIBOLD_BLACK_18),
            Text("Xem thêm >>", style: FONT_CONST.REGULAR_DEFAULT_12),
          ],
        ));
  }
}
