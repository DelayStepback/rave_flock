import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/constants/enums/exceptions/exceptions_enum.dart';
import 'package:rave_flock/common/localization.dart';
import 'package:rave_flock/domain/repositories/user_repository.dart';
import 'package:rave_flock/services/auth_service.dart';

class SetUsernameScreen extends StatefulWidget {
  const SetUsernameScreen({super.key});

  @override
  State<SetUsernameScreen> createState() => _SetUsernameScreenState();
}

class _SetUsernameScreenState extends State<SetUsernameScreen> {
  final _usernameController = TextEditingController();

  bool usernameExists = false;
  String usernameText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0).r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                  visible: usernameExists,
                  child: Text(context.S.name_exists_retry)),
              SizedBox(
                height: 20.h,
              ),
              TextFormField(
                controller: _usernameController,
                decoration:  InputDecoration(label: Text('${context.S.my_name_is}...')),
                onChanged: (value) {
                  setState(() {
                    usernameText = value;
                  });
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Visibility(
                visible: usernameText != '',
                child: ElevatedButton(
                    onPressed: () async {
                      print(usernameText);
                      final username = _usernameController.text.trim();

                      String? userId = AuthService.getUserId();
                      if (userId != null) {
                        try {
                          await GetIt.I<UserRepository>()
                              .updateUsername(username, userId)
                              .then((value) => context.go("/"));
                        } catch (e) {
                          if (e == ExceptionsEnum.usernameExists) {
                            setState(() {
                              usernameExists = true;
                            });
                          }
                        }
                      } else {
                        context.go('/login');
                      }
                    },
                    child: SizedBox(
                      width: 150.w,
                      height: 43.h,
                      child: const Icon(Icons.home),
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
