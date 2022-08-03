import 'package:flutter/material.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

class NoNetworkScreen extends StatefulWidget {
  const NoNetworkScreen({Key? key}) : super(key: key);

  @override
  State<NoNetworkScreen> createState() => _NoNetworkScreenState();
}

class _NoNetworkScreenState extends State<NoNetworkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: COLOR_CONST.BASE,
            child: const Center(child: Text("No network screen"))));
  }
}
