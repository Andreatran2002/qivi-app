import 'package:flutter/material.dart';
import 'package:qivi_app/src/app/my_app.dart';

import 'src/app_config.dart';
import 'src/presentation/router.dart';

void main() {
  MyApp.initSystemDefault();

  runApp(
    AppConfig(
      appName: "Qivi App",
      debugTag: false,
      flavorName: "prod",
      initialRoute: AppRouter.SPLASH,
      child: MyApp.runWidget(),
    ),
  );
}
