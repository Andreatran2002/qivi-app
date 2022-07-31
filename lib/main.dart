import 'package:flutter/material.dart';
import 'package:qivi_bill/src/app_config.dart';
import 'package:qivi_bill/src/presentation/router.dart';

import 'src/app/my_app.dart';

void main() {
  MyApp.initSystemDefault();

  runApp(
    AppConfig(
      appName: "Qivi Dev",
      debugTag: false,
      flavorName: "dev",
      initialRoute: AppRouter.SPLASH,
      child: MyApp.runWidget(),
    ),
  );
}
