import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qivi_bill/src/utils/my_const/my_const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: COLOR_CONST.DEFAULT,
        child: Center(
          child: SizedBox(width: 240, child: Text("hehe")),
        ),
      ),
    );
  }
}
