import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';
import 'package:rave_flock/presentation/pages/home_page/widgets/meet_roll_loading.dart';
import 'package:rave_flock/presentation/pages/home_page/widgets/meet_roll_widget.dart';
import '../../../common/constants/enums/guest_choose_at_meet_enum.dart';
import '../../../common/widget/text_input.dart';
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
          BlocProvider.of<MeetDataBloc>(context).add(MeetDataEvent.search(AuthService.getUserId() ?? '', value));
      },
    );
  }

  Future<void> _refresh() async {
    Future block = GetIt.I<MeetDataBloc>().stream.first;
    GetIt.I<MeetDataBloc>().add(MeetDataEvent.initialize(AuthService.getUserId() ?? ''));
    await block;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: RadialGradient(radius: 1.2.r, colors: [Color(0xFF5B1828), Colors.black])),
      child: Scaffold(
          backgroundColor: Colors.transparent, //const Color(0xFF433383),
          body: RefreshIndicator(
            color: Colors.white,
            backgroundColor: Color(0xFF5B1828),
            triggerMode: RefreshIndicatorTriggerMode.onEdge,
            onRefresh: () async {
              await _refresh();
            },
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  leading: GestureDetector(onTap: () => context.pop(), child: Icon(Icons.arrow_back_ios)),
                  // title: Text('R A V E  F L O C K'),
                  expandedHeight: 140,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      color: Colors.transparent,
                      child: Center(child: Text('RAVE FLOCK\nRAVE FLOCK\nRAVE FLOCK\nRAVE FLOCK\n')),
                    ),
                    title: Text('RAVE FLOCK'),
                    centerTitle: true
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 40, right: 40).r,
                    child: TextInput(
                      label: 'Поиск',
                      valid: _titleValid,
                      errorText: 'Слишком короткое название',
                      controller: _titleController,
                      readOnly: false,
                      maxLine: 1,
                      onChanged: _onChangeTitle,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      _buildMeetGroup(MeetRollWidgetEnum.allAccepted),
                      _buildMeetGroup(MeetRollWidgetEnum.invites),
                      _buildMeetGroup(MeetRollWidgetEnum.createdByUser),
                      ElevatedButton(
                        onPressed: () {
                          context.goNamed('createNewMeetScreen');
                        },
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  BlocBuilder<MeetDataBloc, MeetDataState> _buildMeetGroup(MeetRollWidgetEnum meetRollWidgetEnum) {
    return BlocBuilder<MeetDataBloc, MeetDataState>(builder: (_, state) {
      return state.when(
        init: () {
          return MeetRollLoading(meetRollWidgetEnum: meetRollWidgetEnum);
        },
        loaded: (List<MeetEntity> meetsEntities) {
          final filteredEntities = createMeetsThroughtGroup(meetsEntities, meetRollWidgetEnum);
          if (filteredEntities.isNotEmpty) {
            return MeetRollWidget(
              meetsEntities: filteredEntities,
              meetRollWidgetEnum: meetRollWidgetEnum,
            );
          }
          return SizedBox.shrink();
        },
        error: (String error) {
          return Container();
        },
      );
    });
  }

  List<MeetEntity> createMeetsThroughtGroup(List<MeetEntity> meets, MeetRollWidgetEnum meetRollWidgetEnum) {
    List<MeetEntity> meetsEntities = [];
    if (meetRollWidgetEnum == MeetRollWidgetEnum.allAccepted) {
      for (var meet in meets) {
        final myGuest = meet.usersGuests?.firstWhere((element) => element.userId == AuthService.getUserId());
        if (myGuest != null) {
          if (myGuest.status == GuestChooseAtMeetEnum.accepted.name) {
            meetsEntities.add(meet);
          }
        }
      }
    } else if (meetRollWidgetEnum == MeetRollWidgetEnum.createdByUser) {
      for (var meet in meets) {
        if (meet.meetModel.meetOwnerId == AuthService.getUserId()) {
          meetsEntities.add(meet);
        }
      }
    } else if (meetRollWidgetEnum == MeetRollWidgetEnum.invites) {
      for (var meet in meets) {
        final myGuest = meet.usersGuests?.firstWhere((element) => element.userId == AuthService.getUserId());
        if (myGuest != null) {
          if (myGuest.status == GuestChooseAtMeetEnum.none.name) {
            meetsEntities.add(meet);
          }
        }
      }
    }
    return meetsEntities;
  }
}
