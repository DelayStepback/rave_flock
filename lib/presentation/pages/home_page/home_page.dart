import 'dart:async';

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
import 'package:rave_flock/presentation/pages/friends_page/widgets/notification_button_widget.dart';
import 'package:rave_flock/presentation/pages/home_page/widgets/create_new_meet_screen.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import '../../../common/validation/validation.dart';
import '../../../common/widget/text_input.dart';
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

class _HomePageView extends StatefulWidget {
  _HomePageView({super.key});

  @override
  State<_HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<_HomePageView> {
  final String? userIdAuth = AuthService.getUserId();

  final _titleController = TextEditingController();

  @override
  void dispose() {
    titleDebounceTimer?.cancel();

    _titleController.dispose();
    super.dispose();
  }
  bool _titleValid = true;


  Timer? titleDebounceTimer;


  void _onChangeTitle(String value) {
    if (titleDebounceTimer?.isActive ?? false) {
      titleDebounceTimer?.cancel();
    }
    titleDebounceTimer = Timer(
      const Duration(milliseconds: 500),
          () {
        setState(
              () {
            _titleValid = Validation.validateTitle(value) == null;
            print(_titleValid);
            if (_titleValid == true){
              BlocProvider.of<MeetDataBloc>(context).add(MeetDataEvent.search(AuthService.getUserId() ?? '', value));
            }
          },
        );
      },
    );
  }
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
            TextButton(
              onPressed: () {
                AuthService.signOut();
                context.go('/');
              },
              child: Text('logout'),
            ),
            Padding(padding: const EdgeInsets.only(top: 70),
              child: TextInput(
                label: 'Title',
                valid: _titleValid,
                errorText: 'Слишком короткое название',
                controller: _titleController,
                readOnly: false,
                maxLine: 1,
                onChanged: _onChangeTitle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  BlocListener<MeetDataBloc, MeetDataState>(
                    listener: (context, state) {
                      state.when(
                          init: () {},
                          loaded: (_) {},
                          // impl for auto route if error
                          error: (e) =>
                              context.go('/errorScreen', extra: {'error': e}), search: (List<MeetEntity> allMeetData, List<MeetEntity> meetsSearched) {  });
                    },
                    child: BlocBuilder<MeetDataBloc, MeetDataState>(
                      builder: (context, state) {
                        return state.when(
                          init: () {
                            if (userIdAuth != null) {
                              // context
                              //     .read<MeetDataBloc>()
                              //     .add(MeetDataInitializeEvent(userIdAuth!));
                            }
                            return Text(
                              'LOADING',
                            );
                          },
                          loaded: (List<MeetEntity> meetsEntities) {
                            return MeetRollWidget(
                              meetsEntities: meetsEntities,
                            );
                          },
                          error: (String error) {
                            return Container();
                          }, search: (List<MeetEntity> meetsEntities, List<MeetEntity> meetsSearched) {
                          return MeetRollWidget(
                            meetsEntities: meetsSearched,
                          );

                        },
                        );
                      },
                    ),
                  ),
                  UnconstrainedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        context.goNamed('createNewMeetScreen');
                      },
                      child: const Icon(Icons.add),
                    ),
                  ),
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
