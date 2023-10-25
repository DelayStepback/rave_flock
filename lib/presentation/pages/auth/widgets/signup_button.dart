import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../data/repositories/user_repository_supabase_impl.dart';
import '../../../../services/auth_service.dart';
class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
    required bool emailValid,
    required bool passwordValid,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })  : _emailValid = emailValid,
        _passwordValid = passwordValid,
        _emailController = emailController,
        _passwordController = passwordController;

  final bool _emailValid;
  final bool _passwordValid;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    return ElevatedButton(
      onPressed: () async {
        if (_emailValid && _passwordValid && (email != '' && password != '')) {
          try {
            await AuthService.signUpWithEmail(email, password)
                .then((value) => context.go("/setUsername"));
          } on AuthException catch (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error.message),
              ),
            );
          } catch (e) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Error, try again'),
              ),
            );
          }
        }
      },
      child: const Text('sign up'),
    );
  }
}