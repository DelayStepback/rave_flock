import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/domain/entity/friendship_request_entity/friendship_request_entity.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_state.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';
import 'package:rave_flock/presentation/pages/friends_page/widgets/add_new_friend_widget.dart';
import 'package:rave_flock/presentation/pages/home_page/widgets/meet_roll_widget.dart';
import 'package:rave_flock/presentation/pages/home_page/widgets/notification_button_widget.dart';
import 'package:rave_flock/presentation/pages/home_page/widgets/create_new_meet_screen.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import '../../../data/models/meet/meet_model.dart';
import '../../../services/auth_service.dart';
import '../../bloc/friends_data_bloc/friends_data_bloc.dart';
import '../../bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/meet_data_bloc/meet_data_event.dart';
import '../../bloc/user_data_bloc/user_data_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider.value(value: GetIt.I<FriendRequestsBloc>()),
      BlocProvider.value(value: GetIt.I<FriendsDataBloc>()),
      BlocProvider.value(value: GetIt.I<MeetDataBloc>()),
      BlocProvider.value(value: GetIt.I<UserDataBloc>()),
    ], child: _HomePageView());
  }
}

class _HomePageView extends StatelessWidget {
  _HomePageView({super.key});

  final String? userIdAuth = AuthService.getUserId();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, //const Color(0xFF433383),
      body: SafeArea(
        child: Stack(
          children: [
            // SvgPicture.asset(
            //   'assets/images/phone.svg',
            // ),

            const NotificationButtonWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: CustomScrollView(
                slivers: [
                  BlocListener<MeetDataBloc, MeetDataState>(
                    listener: (context, state) {
                      state.when(
                          init: () {},
                          loaded: (_) {},
                          // impl for auto route if error
                          error: (e) =>
                              context.go('/errorScreen', extra: {'error': e}));
                    },
                    child: BlocBuilder<MeetDataBloc, MeetDataState>(
                      builder: (context, state) {
                        return state.when(
                          init: () {
                            if (userIdAuth != null) {
                              context
                                  .read<MeetDataBloc>()
                                  .add(MeetDataInitializeEvent(userIdAuth!));
                            }
                            return const SliverToBoxAdapter(
                              child: Text(
                                'LOADING',
                              ),
                            );
                          },
                          loaded: (List<MeetEntity> meetsEntities) {
                            return SliverToBoxAdapter(
                                child: MeetRollWidget(
                              meetsEntities: meetsEntities,
                            ));
                          },
                          error: (String error) {
                            return Container();
                          },
                        );
                      },
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        UnconstrainedBox(
                          child: ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) {
                                  return const FractionallySizedBox(
                                    heightFactor: 0.9,
                                    child: CreateNewMeetScreen(),
                                  );
                                },
                              );
                            },
                            child: const Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 40,
              child: IconButton(
                  onPressed: () {
                    GetIt.I<MeetDataBloc>().add(MeetDataEvent.initialize(
                        AuthService.getUserId() ?? ''));
                  },
                  icon: const Icon(
                    Icons.refresh,
                    size: 40,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
