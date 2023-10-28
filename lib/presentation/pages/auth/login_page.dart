import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:internet_connectivity_checker/internet_connectivity_checker.dart';
import 'package:rave_flock/common/validation/validation.dart';
import 'package:rave_flock/common/widget/text_input.dart';
import 'package:rave_flock/data/repositories/user_repository_supabase_impl.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/user_data_bloc/user_data_bloc.dart';
import 'package:rave_flock/presentation/pages/auth/widgets/login_button.dart';
import 'package:rave_flock/presentation/pages/auth/widgets/signup_button.dart';
import 'package:rave_flock/services/auth_service.dart';
import 'package:rave_flock/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../bloc/friend_requests_bloc/friend_requests_bloc.dart';
import '../../screens/check_connectivity_screen/check_connectivity_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider.value(
              value:  GetIt.I<FriendRequestsBloc>()),
          BlocProvider.value(value:GetIt.I<FriendsDataBloc>()),
          BlocProvider.value(value: GetIt.I<MeetDataBloc>()),
          BlocProvider.value(value: GetIt.I<UserDataBloc>()),
        ],
        child: _LoginPage());
  }
}


class _LoginPage extends StatefulWidget {
  const _LoginPage({super.key});

  @override
  State<_LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<_LoginPage> {
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
            _passwordValid =
                Validation.validatePassword(value) == null;
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



