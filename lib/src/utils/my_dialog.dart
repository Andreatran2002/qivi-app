import 'package:flutter/material.dart';

class MyDialog {
  static void deleteDialog(
      BuildContext context, VoidCallback callback, String title) {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text(
                    'Bạn có chắc chắn muốn xoá sản phẩm trong giỏ hàng không?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Có'),
              onPressed: () {
                Navigator.of(context).pop();
                callback();
              },
            ),
            TextButton(
              child: const Text('Không'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
