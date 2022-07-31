import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_bill/src/model/repo/user_repository.dart';
import 'package:qivi_bill/src/presentation/common_widgets/widget_logo_qivi.dart';
import 'package:qivi_bill/src/presentation/screens/login/widget_login_form.dart';
import 'package:qivi_bill/src/utils/my_const/my_const.dart';

import 'bloc/bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var userRepository = RepositoryProvider.of<UserRepository>(context);

    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginBloc(userRepository: userRepository),
        child: Container(
          color: COLOR_CONST.BASELOGIN,
          child: ListView(
            children: [_buildLogo(), _buildLoginForm()],
          ),
        ),
      ),
    );
  }

  _buildLogo() => WidgetLogoQivi();
  _buildLoginForm() => WidgetLoginForm();
}
