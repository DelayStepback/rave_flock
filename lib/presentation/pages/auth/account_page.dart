import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/constants/enums/guest_choose_at_meet_enum.dart';
import 'package:rave_flock/common/constants/enums/meet_status_enum.dart';
import 'package:rave_flock/common/constants/enums/user_fields_enum.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/data/models/guest/guest_model.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/data/repositories/friends_repository_supabase_impl.dart';
import 'package:rave_flock/data/repositories/meet_repository_supabase_impl.dart';
import 'package:rave_flock/data/repositories/user_repository_supabase_impl.dart';
import 'package:rave_flock/domain/auth_service.dart';
import 'package:rave_flock/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../data/models/user/user_model.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  late final userId;

  @override
  void initState() {
    Future.delayed(Duration.zero);
    super.initState();
    if (!mounted) return;
    userId = supabase.auth.currentUser!.id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () async {
              final location = 'Volgograd';
              await supabase.from('users').update({
                'profile_description': 'люблю голубей',
                'location': location
              }).eq('user_id', userId);
            },
            child: Text('update user'),
          ),
          TextButton(
            onPressed: () async {
              MeetModel meetModel = MeetModel(
                meetOwnerId: userId,
                title: 'Первый сбор :000',
                status: MeetStatusEnum.willBe,
                meetIsPublic: false,
                containsBasket: false,
                meetAt: DateTime.now(),
              );
              MeetRepositorySupabaseImpl meetRepositorySupabaseImpl =
                  MeetRepositorySupabaseImpl();
              meetRepositorySupabaseImpl.addMeet(meetModel);
              // us.updateUsername('username11111', userId);
              // final data = await supabase.from('users').select('*').eq('user_id', '08d2cff0-2e3c-47e8-8927-59c56dbe286f').maybeSingle();

              // print(UserModel.fromJson(data));
            },
            child: Text('create meet mock'),
          ),
          TextButton(
            onPressed: () async {
              FriendsRepositorySupabaseImpl friendsRepositorySupabaseImpl =
              FriendsRepositorySupabaseImpl();
              print( await friendsRepositorySupabaseImpl.fetchUserFriendships(userId));
            },
            child: Text('fetchUserFriends!!!!!!!'),
          ),
          TextButton(
            onPressed: () async {
              AuthService.signOut();
              context.go("/login");
            },
            child: Text('signOut'),
          ),
          Text('${supabase.auth.currentUser}')
        ],
      ),
    );
  }
}
