import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:rave_flock/common/constants/enums/exceptions/exceptions_enum.dart';
import 'package:rave_flock/common/localization.dart';
import 'package:rave_flock/domain/repositories/friends_repository.dart';
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
              decoration: InputDecoration(label: Text(context.S.friend_name)),
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
                              return NotificationToast(
                                message: context.S.request_sended,
                                needShowSmile: true,
                                emoji: '👍',
                              );
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
                                return NotificationToast(message: context.S.username_not_found);
                              },
                              duration: const Duration(seconds: 3),
                            );
                            break;
                          case ExceptionsEnum.requestAlreadySend:
                            showOverlayNotification(
                              (context) {
                                return NotificationToast(
                                  message: context.S.request_already_sended,
                                  needShowSmile: true,
                                  emoji: '👍',
                                );
                              },
                              duration: const Duration(seconds: 3),
                            );
                            break;
                          case ExceptionsEnum.alreadyYourFriend:
                            showOverlayNotification(
                              (context) {
                                return  NotificationToast(
                                  message: context.S.already_your_friend,
                                  needShowSmile: true,
                                  emoji: '👍',
                                );
                              },
                              duration: const Duration(seconds: 2),
                            );
                            break;
                          case ExceptionsEnum.cannotAddYourself:
                            showOverlayNotification(
                              (context) {
                                return  NotificationToast(
                                  message: context.S.cannot_add_yourself,
                                  needShowSmile: true,
                                  emoji: '🤡',
                                );
                              },
                              duration: const Duration(seconds: 3),
                            );
                            break;
                        }
                      }
                    },
                    child: Text(context.S.add_to_friends),
                  )
          ],
        ),
      ),
    );
  }
}
