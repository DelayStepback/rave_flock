import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../domain/entity/friendship_request_entity/friendship_request_entity.dart';
import '../../../bloc/friend_requests_bloc/friend_requests_bloc.dart';
import '../../../bloc/friend_requests_bloc/friend_requests_state.dart';
class NotificationButtonWidget extends StatelessWidget {
  const NotificationButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Align(
            alignment: Alignment.topRight,
            child: UnconstrainedBox(
              child: ElevatedButton(
                onPressed: () {
                  context.pushNamed('friendRequestsScreen');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.notifications_active_outlined),
                    const SizedBox(
                      width: 10,
                    ),
                    BlocBuilder<FriendRequestsBloc, FriendRequestsState>(
                      builder: (context, state) {
                        return state.when(
                          init: () {
                            return const Text('loading');
                          },
                          loaded:
                              (List<FriendshipRequestEntity> friendships) {
                            return Text(friendships.length.toString());
                          },
                          error: (e) {
                            return Text('$e');
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
