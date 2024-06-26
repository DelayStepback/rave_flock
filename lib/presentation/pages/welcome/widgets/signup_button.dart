import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:rave_flock/common/localization.dart';
import 'package:rave_flock/common/themes/theme_constants.dart';
import 'package:rave_flock/presentation/widget/notification_toast.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
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

    bool checkValid = _emailValid && _passwordValid && (email != '' && password != '');
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: checkValid ? Colors.green : kButtonBackgroundColorDark),
      onPressed: () async {
        if (checkValid) {
          try {
            await AuthService.signUpWithEmail(email, password).then((value) => context.go("/setUsername"));
          } on AuthException {
            showOverlayNotification(
              (context) {
                return NotificationToast(
                  message: context.S.wrong_email_or_passwor,
                  needShowSmile: true,
                  emoji: '❌',
                );
              },
              duration: const Duration(seconds: 3),
            );
          } catch (e) {
            showOverlayNotification(
              (context) {
                return NotificationToast(
                  message: context.S.something_went_wrong,
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
          ? Text(context.S.next)
          : Text(
              context.S.next,
              style: const TextStyle(color: Colors.white),
            ),
    );
  }
}
