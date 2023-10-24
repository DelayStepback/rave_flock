import 'package:flutter/material.dart';
import 'package:rave_flock/common/constants/enums/exceptions/exceptions_enum.dart';
import 'package:rave_flock/data/repositories/friends_repository_supabase_impl.dart';
import 'package:rave_flock/main.dart';

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
      appBar: AppBar(
        title: Text('add new friend'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _usernameController,
            decoration: InputDecoration(label: Text('New friend username')),
          ),
          fetching? CircularProgressIndicator() :ElevatedButton(
              onPressed: () async {
                FriendsRepositorySupabaseImpl friendsRep =
                    FriendsRepositorySupabaseImpl();
                try{
                  setState(() {
                    fetching = true;
                  });
                  await friendsRep
                      .sendARequest(supabase.auth.currentUser!.id,
                      _usernameController.text.trim())
                      .then((value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
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
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('username not found'),
                        ),
                      );
                      break;
                    case ExceptionsEnum.requestAlreadySend:
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('request already send'),
                        ),
                      );
                      break;
                    case ExceptionsEnum.alreadyYourFriend:
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('already your friend'),
                        ),
                      );
                      break;
                    case ExceptionsEnum.cannotAddYourself:
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('cannot add yourself'),
                        ),
                      );
                      break;
                  }
               }
              },
              child: Text('добавить в друзья'))
        ],
      ),
    );
  }
}
