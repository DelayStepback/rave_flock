import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../common/validation/validation.dart';
import '../../../../../common/widget/text_input.dart';
import '../../widgets/login_button.dart';
import '../../widgets/signup_button.dart';

enum InputWindowWidgetType { signUp, login }

class InputWindowWidget extends StatefulWidget {
  const InputWindowWidget({super.key, required this.inputWindowWidgetType});

  final InputWindowWidgetType inputWindowWidgetType;

  @override
  State<InputWindowWidget> createState() => _InputWindowWidgetState();
}

class _InputWindowWidgetState extends State<InputWindowWidget> {
  Timer? emailDebounceTimer;
  Timer? passwordDebounceTimer;

  bool _emailValid = true;
  bool _passwordValid = true;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    emailDebounceTimer?.cancel();
    passwordDebounceTimer?.cancel();

    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  void _onChangePassword(String value) {
    if (passwordDebounceTimer?.isActive ?? false) {
      passwordDebounceTimer?.cancel();
    }
    passwordDebounceTimer = Timer(
      const Duration(milliseconds: 500),
      () {
        setState(
          () {
            _passwordValid = Validation.validatePassword(value) == null;
          },
        );
      },
    );
  }

  void _onChangeEmail(String value) {
    if (emailDebounceTimer?.isActive ?? false) {
      emailDebounceTimer?.cancel();
    }
    emailDebounceTimer = Timer(
      const Duration(milliseconds: 500),
      () {
        setState(
          () {
            _emailValid = Validation.validateEmail(value) == null;
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60.0).h,
                  child: Text(
                    widget.inputWindowWidgetType == InputWindowWidgetType.signUp
                        ? 'Регистрация'
                        : 'Вход',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 70.0).h,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      TextInput(
                        label: 'Почта',
                        controller: _emailController,
                        valid: _emailValid,
                        errorText: "Пожалуйста, введите, корректную почту",
                        //Please enter a valid email
                        onChanged: _onChangeEmail,
                        keyboardType: TextInputType.emailAddress,
                        maxLine: 1,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextInput(
                        label: 'Пароль',
                        controller: _passwordController,
                        valid: _passwordValid,
                        errorText: "Пароль должен быть от 6 символов",
                        // Password must be greater than 5 symbols
                        onChanged: _onChangePassword,
                        keyboardType: TextInputType.visiblePassword,
                        maxLine: 1,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Visibility(
                        visible: widget.inputWindowWidgetType ==
                            InputWindowWidgetType.signUp,
                        child: SignUpButton(
                            emailValid: _emailValid,
                            passwordValid: _passwordValid,
                            emailController: _emailController,
                            passwordController: _passwordController),
                      ),
                      Visibility(
                        visible:
                            widget.inputWindowWidgetType == InputWindowWidgetType.login,
                        child: LoginButton(
                            emailValid: _emailValid,
                            passwordValid: _passwordValid,
                            emailController: _emailController,
                            passwordController: _passwordController),
                      ),
                      // TODO:
                      // Text('${BlocProvider.of<FriendRequestsBloc>(context).state}'),
                      // Text('${BlocProvider.of<FriendsDataBloc>(context).state}'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
