import 'package:rave_flock/data/models/user/user_model.dart';

class FriendshipRequestEntity{
   int id;
   String currentUserId;
   String sourceUserUsername;
   String sourceAvatarUrl;

   FriendshipRequestEntity({required this.id, required this.currentUserId, required this.sourceUserUsername,required this.sourceAvatarUrl});

}

