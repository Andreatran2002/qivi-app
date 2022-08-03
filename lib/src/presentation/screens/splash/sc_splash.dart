import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:qivi_app/src/presentation/common_widgets/widget_logo_qivi.dart';
import 'package:qivi_app/src/presentation/router.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    openLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: COLOR_CONST.BASE,
        child: Center(
          child: SizedBox(
            width: 240,
            child: WidgetLogoQivi(),
          ),
        ),
      ),
    );
  }

  void openLogin() {
    Future.delayed(const Duration(seconds: 3), () {
      // Navigator.pushNamed(context, AppRouter.LOGIN);
    });
  }
}
