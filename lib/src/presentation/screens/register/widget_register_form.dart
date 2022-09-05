import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/app/auth_bloc/bloc.dart';
import 'package:qivi_app/src/presentation/router.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

import 'bloc/bloc.dart';

class WidgetRegisterForm extends StatefulWidget {
  const WidgetRegisterForm({Key? key}) : super(key: key);

  @override
  State<WidgetRegisterForm> createState() => _WidgetRegisterFormState();
}

class _WidgetRegisterFormState extends State<WidgetRegisterForm> {
  late AuthenticationBloc _authenticationBloc;
  late RegisterBloc _registerBloc;

  final _phoneNumberController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool get isPopulated =>
      _phoneNumberController.text.isNotEmpty &&
      _lastNameController.text.isNotEmpty &&
      _firstNameController.text.isNotEmpty &&
      _passwordController.text.isNotEmpty;

  @override
  void initState() {
    _authenticationBloc = BlocProvider.of<AuthenticationBloc>(context);
    _registerBloc = BlocProvider.of<RegisterBloc>(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (context, state) {
        if (state.isSuccess) {
          _authenticationBloc.add(LoggedIn());
        }

        if (state.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Đăng ký thất bại'),
                    Icon(Icons.error),
                  ],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }

        if (state.isSubmitting) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Đang xử lí ...'),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
      },
      child:
          BlocBuilder<RegisterBloc, RegisterState>(builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                  child: Text('Đăng ký tài khoản',
                      style: FONT_CONST.SEMIBOLD_BLACK_24),
                ),
                const SizedBox(height: 20),
                _buildTextFieldlastName(),
                const SizedBox(height: 14),
                _buildTextFieldPhoneNumber(),
                const SizedBox(height: 14),
                _buildTextFieldfirstName(),
                const SizedBox(height: 10),
                _buildTextFieldPassword(),
                const SizedBox(height: 14),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.of(context).pushNamed(AppRouter.LOGIN),
                    },
                    child: Text(
                      "Đã có tài khoản?",
                      style: FONT_CONST.REGULAR_GRAY4_12,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                _buildButtonRegister(state),
              ],
            ),
          ),
        );
      }),
    );
  }

  _buildButtonRegister(RegisterState state) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: () {
          if (isRegisterButtonEnabled()) {
            _registerBloc.add(RegisterSubmitButtonEvent(
              phoneNumber: _phoneNumberController.text,
              password: _passwordController.text,
              firstName: _firstNameController.text,
              lastName: _lastNameController.text,
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
          'Đăng ký'.toUpperCase(),
          style: FONT_CONST.SEMIBOLD_WHITE_18,
        ),
      ),
    );
  }

  bool isRegisterButtonEnabled() {
    return _registerBloc.state.isFormValid &&
        isPopulated &&
        !_registerBloc.state.isSubmitting;
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
            _registerBloc.add(RegisterPasswordChanged(password: value));
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (_) {
            return !_registerBloc.state.isPasswordValid
                ? 'Mật khẩu không hợp lệ'
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
            _registerBloc.add(RegisterPhoneNumberChanged(phoneNumber: value));
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (_) {
            return !_registerBloc.state.isPhoneNumberValid
                ? 'Số điện thoại không hợp lệ'
                : null;
          },
          style: FONT_CONST.REGULAR_GRAY1_12,
          maxLines: 1,
          keyboardType: TextInputType.text,
          textAlign: TextAlign.left,
          decoration: const InputDecoration.collapsed(
            hintText: 'Số điện thoại',
          ),
        ),
      ),
    );
  }

  _buildTextFieldlastName() {
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
          controller: _lastNameController,
          onChanged: (value) {
            _registerBloc.add(RegisterLastNameChanged(lastName: value));
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (_) {
            return !_registerBloc.state.isLastNameValid
                ? 'Vui lòng không để trống'
                : null;
          },
          style: FONT_CONST.REGULAR_GRAY1_12,
          maxLines: 1,
          keyboardType: TextInputType.text,
          textAlign: TextAlign.left,
          decoration: const InputDecoration.collapsed(
            hintText: 'Họ và tên',
          ),
        ),
      ),
    );
  }

  _buildTextFieldfirstName() {
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
          controller: _firstNameController,
          onChanged: (value) {
            _registerBloc.add(RegisterFirstNameChanged(firstName: value));
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (_) {
            return !_registerBloc.state.isFirstNameValid
                ? 'Vui lòng không để trống'
                : null;
          },
          style: FONT_CONST.REGULAR_GRAY1_12,
          maxLines: 1,
          keyboardType: TextInputType.text,
          textAlign: TextAlign.left,
          decoration: const InputDecoration.collapsed(
            hintText: 'Địa chỉ',
          ),
        ),
      ),
    );
  }
}
