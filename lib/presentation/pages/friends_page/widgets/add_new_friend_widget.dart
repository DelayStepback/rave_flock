import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rave_flock/common/constants/enums/exceptions/exceptions_enum.dart';
import 'package:rave_flock/data/repositories/friends_repository_supabase_impl.dart';
import 'package:rave_flock/domain/repositories/friends_repository.dart';
import 'package:rave_flock/services/auth_service.dart';

class AddNewFriendWidget extends StatefulWidget {
  const AddNewFriendWidget({super.key});

  @override
  State<AddNewFriendWidget> createState() => _AddNewFriendWidgetState();
}

class _AddNewFriendWidgetState extends State<AddNewFriendWidget> {
  final _usernameController = TextEditingController();
  bool fetching = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: _usernameController,
            decoration: const InputDecoration(label: Text('Имя нового друга')),
          ),
          SizedBox(height: 10,),
          fetching? const CircularProgressIndicator() :ElevatedButton(
              onPressed: () async {
                try{
                  setState(() {
                    fetching = true;
                  });
                  await GetIt.I<FriendsRepository>()
                      .sendARequest(AuthService.getUserId() ?? '',
                      _usernameController.text.trim())
                      .then((value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('заявка отправлена'),
                      ),
                    );
                    setState(() {
                      fetching = false;
                    });

                  });
                }
                catch(e){
                  setState(() {
                    fetching = false;
                  });
                  switch(e){
                    case ExceptionsEnum.usernameNotFound:
                    // TODO: SHOW DIALOG instead SnackBar
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('username not found'),
                        ),
                      );
                      break;
                    case ExceptionsEnum.requestAlreadySend:
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('request already send'),
                        ),
                      );
                      break;
                    case ExceptionsEnum.alreadyYourFriend:
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('already your friend'),
                        ),
                      );
                      break;
                    case ExceptionsEnum.cannotAddYourself:
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('cannot add yourself'),
                        ),
                      );
                      break;
                  }
                }
              },
              child: const Text('добавить в друзья'))
        ],
      ),
    );
  }
}
