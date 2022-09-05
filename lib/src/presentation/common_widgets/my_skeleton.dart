import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/repo/repo.dart';
import 'package:qivi_app/src/presentation/router.dart';
import 'package:qivi_app/src/presentation/screens/product_info/bloc/bloc.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

class MySkeleton extends StatefulWidget {
  const MySkeleton(this.widthOfScreen, this.heightOfScreen, {Key? key})
      : super(key: key);
  final double widthOfScreen;
  final double heightOfScreen;

  @override
  State<MySkeleton> createState() => _MySkeletonState();
}

class _MySkeletonState extends State<MySkeleton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: COLOR_CONST.BLACK2.withOpacity(0.1),
      ),
      margin: const EdgeInsets.only(bottom: 5),
      width: MediaQuery.of(context).size.width * widget.widthOfScreen,
      height: MediaQuery.of(context).size.height * widget.heightOfScreen,
    );
  }
}
