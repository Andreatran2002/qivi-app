import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_bill/src/model/repo/user_repository.dart';
import 'package:qivi_bill/src/presentation/common_widgets/widget_logo_qivi.dart';
import 'package:qivi_bill/src/utils/my_const/my_const.dart';

import 'barrel_register.dart';
import 'bloc/bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    var userRepository = RepositoryProvider.of<UserRepository>(context);

    return Scaffold(
      body: BlocProvider(
        create: (context) => RegisterBloc(userRepository: userRepository),
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
  _buildLoginForm() => const WidgetRegisterForm();
}
