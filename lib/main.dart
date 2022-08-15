import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:qivi_app/src/app_config.dart';
import 'package:qivi_app/src/model/entity/cart_item.dart';
import 'package:qivi_app/src/presentation/router.dart';

import 'src/app/my_app.dart';

void main() async {
  MyApp.initSystemDefault();
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(CartItemAdapter());
  await Hive.openBox<CartItem>("cart_items");
  runApp(
    AppConfig(
      appName: "Qivi Dev",
      debugTag: false,
      flavorName: "dev",
      initialRoute: AppRouter.HOME,
      child: MyApp.runWidget(),
    ),
  );
}
