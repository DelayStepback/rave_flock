import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/constants/enums/exceptions/exceptions_enum.dart';
import 'package:rave_flock/data/repositories/meet_repository_supabase_impl.dart';
import 'package:rave_flock/data/repositories/user_repository_supabase_impl.dart';
import 'package:rave_flock/main.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: _usernameController,
            decoration: const InputDecoration(label: Text('Username')),
          ),
          ElevatedButton(
              onPressed: () async {
                final username = _usernameController.text.trim();
                UserRepositorySupabaseImpl userRep =
                    UserRepositorySupabaseImpl();
                String? userId = supabase.auth.currentUser?.id;
                if (userId != null) {
                  try{
                    await userRep
                        .updateUsername(username, userId)
                        .then((value) => context.go("/homepage"));
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
    );
  }
}
