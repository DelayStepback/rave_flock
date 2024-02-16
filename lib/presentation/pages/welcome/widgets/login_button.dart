import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:rave_flock/presentation/widget/notification_toast.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../common/themes/theme_constants.dart';
import '../../../../data/repositories/user_repository_supabase_impl.dart';
import '../../../../services/auth_service.dart';
import '../../../../services/blocs_service.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
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

    bool checkValid = _emailValid && _passwordValid && (email != '' && password != '');
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: checkValid ? Colors.green : kButtonBackgroundColorDark),
      onPressed: () async {
        if (checkValid) {
          try {
            await AuthService.signInWithEmail(email, password).then(
              (value) async {
                final userRep = UserRepositorySupabaseImpl();
                final userId = AuthService.getUserId();
                // такого быть не может, но на всякий случай
                if (userId == null) {
                  context.go("/login");
                } else {
                  bool checkIfUserHaveUsername = await userRep.isUserHaveUsername(userId);
                  BlocService.resetBlocs();
                  BlocService.initAllBlocs();

                  if (checkIfUserHaveUsername) {
                    context.go("/");
                  } else {
                    context.go("/setUsername");
                  }
                }
              },
            );
          } on AuthException {
            showOverlayNotification(
              (context) {
                return const NotificationToast(
                  message: 'Wrong email or password',
                  needShowSmile: true,
                  emoji: '❌',
                );
              },
              duration: const Duration(seconds: 3),
            );
          } catch (e) {
            showOverlayNotification(
              (context) {
                return const NotificationToast(
                  message: 'Something went wrong. Try again',
                  needShowSmile: true,
                  emoji: '❌',
                );
              },
              duration: const Duration(seconds: 3),
            );
          }
        }
      },
      child: !checkValid
          ? Text('Continue')
          : Text(
              'Continue',
              style: TextStyle(color: Colors.white),
            ),
    );
  }
}
