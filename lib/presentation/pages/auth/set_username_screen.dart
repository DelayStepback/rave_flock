import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/constants/enums/exceptions/exceptions_enum.dart';
import 'package:rave_flock/data/repositories/meet_repository_supabase_impl.dart';
import 'package:rave_flock/data/repositories/user_repository_supabase_impl.dart';
import 'package:rave_flock/domain/repositories/user_repository.dart';
import 'package:rave_flock/main.dart';
import 'package:rave_flock/services/auth_service.dart';

class SetUsernameScreen extends StatefulWidget {
  const SetUsernameScreen({super.key});

  @override
  State<SetUsernameScreen> createState() => _SetUsernameScreenState();
}

class _SetUsernameScreenState extends State<SetUsernameScreen> {
  final _usernameController = TextEditingController();

  bool usernameExists = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(label: Text('Username')),
            ),
            ElevatedButton(
                onPressed: () async {
                  final username = _usernameController.text.trim();

                  String? userId = AuthService.getUserId();
                  if (userId != null) {
                    try{
                      await GetIt.I<UserRepository>()
                          .updateUsername(username, userId)
                          .then((value) => context.go("/"));
                    }
                    catch (e){
                      if (e == ExceptionsEnum.usernameExists){
                        setState(() {
                          usernameExists = true;
                        });
                      }
                    }

                  } else {
                    context.go('/login');
                  }
                },
                child: Text('set username')),
            Visibility(
                visible: usernameExists,
                child: Text('username exists'))
          ],
        ),
      ),
    );
  }
}
