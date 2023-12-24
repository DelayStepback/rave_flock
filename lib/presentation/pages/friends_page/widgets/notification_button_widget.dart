import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import '../../../bloc/friend_requests_bloc/friend_requests_bloc.dart';
import '../../../bloc/friend_requests_bloc/friend_requests_state.dart';

class NotificationButtonWidget extends StatelessWidget {
  const NotificationButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: (){
              context.pushNamed('friendRequestsScreen');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          color: Color(0xFF480E11),
          ),
          width: 60.r,
          height: 60.r,
          child: Center(
            child: BlocBuilder<FriendRequestsBloc, FriendRequestsState>(
              builder: (context, state) {
                return state.when(
                  init: () {
                    return CircularProgressIndicator(strokeWidth: 2,color: Colors.white,);
                  },
                  loaded: (List<UserModel> friendships) {
                    final count = friendships.length;
                    final text;
                    if (count > 0) {
                      text = '+ $count';
                    } else {
                      text = '0';
                    }
                    return Text(text, style: TextStyle(fontSize: 24.sp),);
                  },
                  error: (e) {
                    return Text('##');
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
