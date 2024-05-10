import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/localization.dart';
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
  void initState() {
    GetIt.I<MeetDataBloc>().add(MeetDataEvent.initialize(AuthService.getUserId() ?? ''));
    super.initState();
  }

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
                  // title: Text('R A V E  F L O C K'),
                  expandedHeight: 140,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      color: Colors.transparent,
                      child: Center(child: Text(context.S.raves)),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 40, right: 40).r,
                    child: TextInput(
                      label: context.S.search,
                      valid: _titleValid,
                      errorText: context.S.name_is_too_short,
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
                      // TODO: INDEXED STACK
TripleToggleSwitch(),
                      _buildMeetGroup(MeetRollWidgetEnum.allAccepted),
                      _buildMeetGroup(MeetRollWidgetEnum.invites),
                      _buildMeetGroup(MeetRollWidgetEnum.createdByUser),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25.0),
                        child: ElevatedButton(
                          // TODO: move button up or stack
                          onPressed: () {
                            context.goNamed('createNewMeetScreen');
                          },
                          child: const Icon(Icons.add),
                        ),
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

class TripleToggleSwitch extends StatefulWidget {
  @override
  _TripleToggleSwitchState createState() => _TripleToggleSwitchState();
}

class _TripleToggleSwitchState extends State<TripleToggleSwitch> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation1;
  late Animation<Offset> _animation2;
  late Animation<Offset> _animation3;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    _animation1 = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(2, 0),
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0, 0.5, curve: Curves.easeInOut),
      ),
    );
    _animation2 = Tween<Offset>(
      begin: Offset(2, 0),
      end: Offset(1, 0),
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.5, 0.75, curve: Curves.easeInOut),
      ),
    );
    _animation3 = Tween<Offset>(
      begin: Offset(1, 0),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.75, 1, curve: Curves.easeInOut),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleSelection(int index) {
    setState(() {
      _selectedIndex = index;
      _animationController.reset();
      _animationController.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => _toggleSelection(0),
          child: SlideTransition(
            position: _selectedIndex == 0 ? _animation1 : _animation3,
            child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'Option 1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () => _toggleSelection(1),
          child: SlideTransition(
            position: _selectedIndex == 1 ? _animation2 : _animation3,
            child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: _selectedIndex == 1 ? Colors.green : Colors.grey,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'Option 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () => _toggleSelection(2),
          child: SlideTransition(
            position: _selectedIndex == 2 ? _animation3 : _animation1,
            child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: _selectedIndex == 2 ? Colors.red : Colors.grey,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'Option 3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
