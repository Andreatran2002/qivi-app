import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateOrderInfoScreen extends StatefulWidget {
  const CreateOrderInfoScreen({Key? key}) : super(key: key);

  @override
  State<CreateOrderInfoScreen> createState() => _CreateOrderInfoScreenState();
}

class _CreateOrderInfoScreenState extends State<CreateOrderInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tạo địa chỉ mới")), body: Container());
  }
}
