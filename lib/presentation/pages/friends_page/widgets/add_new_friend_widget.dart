import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:rave_flock/common/constants/enums/exceptions/exceptions_enum.dart';
import 'package:rave_flock/domain/repositories/friends_repository.dart';
import 'package:rave_flock/presentation/screens/loading_screen/loading_screen.dart';
import 'package:rave_flock/presentation/widget/notification_toast.dart';
import 'package:rave_flock/services/auth_service.dart';

class AddNewFriendScreen extends StatefulWidget {
  const AddNewFriendScreen({super.key});

  @override
  State<AddNewFriendScreen> createState() => _AddNewFriendScreenState();
}

class _AddNewFriendScreenState extends State<AddNewFriendScreen> {
  final _usernameController = TextEditingController();
  bool fetching = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(label: Text('Имя нового друга')),
            ),
            const SizedBox(
              height: 40,
            ),
            fetching
                ? CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  )
                : ElevatedButton(
                    onPressed: () async {
                      try {
                        setState(() {
                          fetching = true;
                        });
                        await GetIt.I<FriendsRepository>()
                            .sendARequest(AuthService.getUserId() ?? '', _usernameController.text.trim())
                            .then((value) {
                          showOverlayNotification(
                              (context) {
                                return const NotificationToast(message: 'Request sended', needShowSmile: true, emoji: '👍',);
                              },
                              duration: const Duration(seconds: 3),
                            );
                          context.pop();

                          setState(() {
                            fetching = false;
                          });
                        });
                      } catch (e) {
                        setState(() {
                          fetching = false;
                        });
                        switch (e) {
                          case ExceptionsEnum.usernameNotFound:
                            showOverlayNotification(
                              (context) {
                                return const NotificationToast(message: 'Username not found');
                              },
                              duration: const Duration(seconds: 3),
                            );
                            break;
                          case ExceptionsEnum.requestAlreadySend:
                            showOverlayNotification(
                              (context) {
                                return const NotificationToast(message: 'Request already sended', needShowSmile: true, emoji: '👍',);
                              },
                              duration: const Duration(seconds: 3),
                            );
                            break;
                          case ExceptionsEnum.alreadyYourFriend:
                            showOverlayNotification(
                              (context) {
                                return const NotificationToast(message: 'Already your friend', needShowSmile: true, emoji: '👍',);
                              },
                              duration: const Duration(seconds: 2),
                            );
                            break;
                          case ExceptionsEnum.cannotAddYourself:
                           showOverlayNotification(
                              (context) {
                                return const NotificationToast(message: 'What? You cannot add yourself. Lol', needShowSmile: true, emoji: '🤡',);
                              },
                              duration: const Duration(seconds: 3),
                            );
                            break;
                        }
                      }
                    },
                    child: const Text('добавить в друзья'))
          ],
        ),
      ),
    );
  }
}
