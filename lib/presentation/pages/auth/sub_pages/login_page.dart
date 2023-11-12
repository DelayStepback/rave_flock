import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connectivity_checker/internet_connectivity_checker.dart';

import '../../../../common/validation/validation.dart';
import '../../../../common/widget/text_input.dart';
import '../../../bloc/friend_requests_bloc/friend_requests_bloc.dart';
import '../../../bloc/friends_data_bloc/friends_data_bloc.dart';
import '../widgets/login_button.dart';
import '../widgets/signup_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}


class LoginPageState extends State<LoginPage> {
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
    return ConnectivityBuilder(builder: (status) {
      return
        // TODO;
        // status != ConnectivityStatus.online
        //   ? const CheckConnectivityScreen()
        //   :
        Scaffold(
          backgroundColor: Color(0xFFAAA7A7),
          appBar: AppBar(
            title: const Text('Login'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                TextInput(
                  label: 'Email',
                  controller: _emailController,
                  valid: _emailValid,
                  errorText: "Please enter a valid email",
                  onChanged: _onChangeEmail,
                  keyboardType: TextInputType.emailAddress,
                  maxLine: 1,
                ),
                const SizedBox(
                  height: 12,
                ),
                TextInput(
                  label: 'Password',
                  controller: _passwordController,
                  valid: _passwordValid,
                  errorText: "Password must be greater than 5 symbols",
                  onChanged: _onChangePassword,
                  keyboardType: TextInputType.visiblePassword,
                  maxLine: 1,
                ),
                const SizedBox(
                  height: 12,
                ),
                SignUpButton(
                    emailValid: _emailValid,
                    passwordValid: _passwordValid,
                    emailController: _emailController,
                    passwordController: _passwordController),
                LoginButton(
                    emailValid: _emailValid,
                    passwordValid: _passwordValid,
                    emailController: _emailController,
                    passwordController: _passwordController),
                Text('${BlocProvider.of<FriendRequestsBloc>(context).state}'),
                Text('${BlocProvider.of<FriendsDataBloc>(context).state}'),
              ],
            ),
          ),
        );
    });
  }
}
