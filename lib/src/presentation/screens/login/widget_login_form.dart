import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/app/auth_bloc/bloc.dart';
import 'package:qivi_app/src/presentation/common_widgets/common_widgets.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

import '../../router.dart';
import 'bloc/bloc.dart';

class WidgetLoginForm extends StatefulWidget {
  const WidgetLoginForm({Key? key}) : super(key: key);

  @override
  State<WidgetLoginForm> createState() => _WidgetLoginFormState();
}

class _WidgetLoginFormState extends State<WidgetLoginForm> {
  late AuthenticationBloc _authenticationBloc;
  late LoginBloc _loginBloc;

  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  bool get isPopulated =>
      _phoneNumberController.text.isNotEmpty &&
      _passwordController.text.isNotEmpty;

  @override
  void initState() {
    _authenticationBloc = BlocProvider.of<AuthenticationBloc>(context);
    _loginBloc = BlocProvider.of<LoginBloc>(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.isSuccess) {
          _authenticationBloc.add(LoggedIn());
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
        return Stack(
          children: [
            ListView(
              children: [
                WidgetLogoQivi(),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: COLOR_CONST.WHITE,
                  ),
                  child: Form(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text('????ng nh???p t??i kho???n',
                              style: FONT_CONST.SEMIBOLD_BLACK_24),
                        ),
                        const SizedBox(height: 20),
                        _buildTextFieldPhoneNumber(),
                        const SizedBox(height: 14),
                        _buildTextFieldPassword(),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushNamed(AppRouter.REGISTER),
                              child: Text(
                                "????ng k?? t??i kho???n",
                                style: FONT_CONST.REGULAR_GRAY4_12,
                              ),
                            ),
                            Text(
                              "Qu??n m???t kh???u?",
                              style: FONT_CONST.REGULAR_GRAY4_12,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        _buildButtonLogin(state),
                        // const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            state.isSubmitting
                ? Container(
                    color: Colors.black.withOpacity(0.7),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: const Center(
                      child: CircularProgressIndicator(color: Colors.white),
                    ))
                : Container(),
            // state.isSuccess
            //     ? Image.asset(
            //         "assets/images/success.gif",
            //         height: 125.0,
            //         width: 125.0,
            //       )
            //     : Container(),
          ],
        );
      }),
    );
  }

  _buildTextOr() {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: Divider(
            color: COLOR_CONST.BLACK_30,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            color: COLOR_CONST.WHITE,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              child: Text(
                'Or',
                style: FONT_CONST.REGULAR_GRAY5_10,
              ),
            ),
          ),
        )
      ],
    );
  }

  _buildButtonLogin(LoginState state) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: () {
          if (isRegisterButtonEnabled()) {
            _loginBloc.add(LoginSubmitPhoneNumberPasswordEvent(
              phoneNumber: _phoneNumberController.text,
              password: _passwordController.text,
            ));
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(isRegisterButtonEnabled()
              ? COLOR_CONST.GREEN3
              : COLOR_CONST.GRAY1_50),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
          )),
        ),
        child: Text(
          '????ng nh???p'.toUpperCase(),
          style: FONT_CONST.SEMIBOLD_WHITE_18,
        ),
      ),
    );
  }

  bool isRegisterButtonEnabled() {
    return _loginBloc.state.isFormValid &&
        isPopulated &&
        !_loginBloc.state.isSubmitting;
  }

  _buildTextFieldPassword() {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 17),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        color: COLOR_CONST.GRAY3,
      ),
      child: Center(
        child: TextFormField(
          controller: _passwordController,
          onChanged: (value) {
            _loginBloc.add(LoginPasswordChanged(password: value));
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (_) {
            return !_loginBloc.state.isPasswordValid
                ? 'M???t kh???u kh??ng h???p l???'
                : null;
          },
          style: FONT_CONST.REGULAR_GRAY1_12,
          maxLines: 1,
          keyboardType: TextInputType.text,
          obscureText: true,
          textAlign: TextAlign.left,
          decoration: const InputDecoration.collapsed(
            hintText: 'Password',
          ),
        ),
      ),
    );
  }

  _buildTextFieldPhoneNumber() {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 17),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        color: COLOR_CONST.GRAY3,
      ),
      child: Center(
        child: TextFormField(
          controller: _phoneNumberController,
          onChanged: (value) {
            _loginBloc.add(LoginPhoneNumberChanged(phoneNumber: value));
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (_) {
            return !_loginBloc.state.isPhoneNumberValid
                ? 'S??? ??i???n tho???i kh??ng h???p l???'
                : null;
          },
          style: FONT_CONST.REGULAR_GRAY1_12,
          maxLines: 1,
          keyboardType: TextInputType.text,
          textAlign: TextAlign.left,
          decoration: const InputDecoration.collapsed(
            hintText: 'S??? ??i???n tho???i',
          ),
        ),
      ),
    );
  }
}
