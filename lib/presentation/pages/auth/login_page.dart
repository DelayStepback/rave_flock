import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:internet_connectivity_checker/internet_connectivity_checker.dart';
import 'package:rave_flock/domain/auth_service.dart';
import 'package:rave_flock/main.dart';
import 'package:rave_flock/presentation/check_connectivity_screen/check_connectivity_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ConnectivityBuilder(
      builder: (status) {
        return status != ConnectivityStatus.online ? const CheckConnectivityScreen():Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(label: Text('Email')),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(label: Text('Password')),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    onPressed: () async {
                      try {
                        final email = _emailController.text.trim();
                        final password = _passwordController.text.trim();

                        await AuthService.signUpWithEmail(email, password).then((value) => context.go("/homepage"));

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
                    },
                    child: const Text('sign up'),),
                ElevatedButton(
                    onPressed: ()  async {
                      try {
                        final email = _emailController.text.trim();
                        final password = _passwordController.text.trim();

                        await AuthService.signInWithEmail(email, password).then((value) => context.go("/homepage"));

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
                    },
                    child: const Text('login'),),

              ],
            ),
          ),
        );

      }
    );
  }
}
