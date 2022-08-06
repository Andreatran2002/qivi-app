import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:qivi_app/src/app_config.dart';
import 'package:qivi_app/src/client.dart';
import 'package:qivi_app/src/presentation/router.dart';

import 'src/app/my_app.dart';

void main() async {
  MyApp.initSystemDefault();
  // final graphqlClient = await initClient();
  // ValueNotifier<GraphQLClient> client = ValueNotifier(graphqlClient);

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
