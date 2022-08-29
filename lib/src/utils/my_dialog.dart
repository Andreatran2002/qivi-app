import 'package:flutter/material.dart';

class MyDialog {
  static Future<bool> deleteDialog(
      BuildContext context, VoidCallback callbacks, String title) async {
    return await showDialog(
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
                Navigator.of(context).pop(true);
                callbacks();
              },
            ),
            TextButton(
              child: const Text('Không'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
        );
      },
    );
  }
}
