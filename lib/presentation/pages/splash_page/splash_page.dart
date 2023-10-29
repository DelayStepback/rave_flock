import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_event.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_state.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_event.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';
import 'package:rave_flock/services/auth_service.dart';
import 'package:rave_flock/services/blocs_service.dart';

import '../../../common/app_string.dart';
import '../../../main.dart';
import '../../bloc/friends_data_bloc/friends_data_state.dart';
import '../../bloc/meet_data_bloc/meet_data_event.dart';
import '../../bloc/user_data_bloc/user_data_bloc.dart';
import '../../bloc/user_data_bloc/user_data_event.dart';
import '../../bloc/user_data_bloc/user_data_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => GetIt.I<FriendRequestsBloc>()),
      BlocProvider(create: (_) => GetIt.I<FriendsDataBloc>()),
      BlocProvider(create: (_) => GetIt.I<MeetDataBloc>()),
      BlocProvider(create: (_) => GetIt.I<UserDataBloc>()),
    ], child: _SplashPage());
  }
}

class _SplashPage extends StatefulWidget {
  const _SplashPage({super.key});

  @override
  State<_SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<_SplashPage> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 10),
      vsync: this,
    )
      ..forward()
      ..addListener(() {
        if (controller.isCompleted) {
          controller.repeat();
        }
      });

    _redirect();
  }

  double shake(double value) {
     return 2 * (0.5 - (0.5 - Curves.easeInOutQuad.transform(value)).abs());
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  Future<void> _redirect() async {
    // чтобы не мерцало seconds = 2
    await Future.delayed(Duration(seconds: 2));

    final session = supabase.auth.currentSession;
    if (!mounted) return;
    if (session != null) {
      // отправляем запросы

      BlocService.initAllBlocs();
    } else {
      BlocService.resetBlocs();
      context.go("/login");
    }
  }

  void checkLoadingThenRouteHome(
      bool friendsRequestAreInitState,
      bool friendsDataAreInitState,
      bool meetDataAreInitState,
      bool userDataAreInitState) {
    if (!friendsRequestAreInitState &&
        !friendsDataAreInitState &&
        !meetDataAreInitState &&
        !userDataAreInitState) {
      context.go("/homepage");
    }
  }

  bool friendsRequestAreInitState = true;
  bool friendsDataAreInitState = true;
  bool meetDataAreInitState = true;
  bool userDataAreInitState = true;

  String processTitle = '';

  void setProcessTitle(String title) {
    setState(() {
      processTitle = title;
    });
  }



  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<FriendRequestsBloc, FriendRequestsState>(
          bloc: GetIt.I<FriendRequestsBloc>(),
          listener: (BuildContext context, state) {
            setProcessTitle(AppStrings.splashLoadedFriendRequests);

            state.when(
                init: () {},
                loaded: (_) {
                  friendsRequestAreInitState = false;
                  checkLoadingThenRouteHome(
                      friendsRequestAreInitState,
                      friendsDataAreInitState,
                      meetDataAreInitState,
                      userDataAreInitState);
                },
                error: (e) => context.go('/errorScreen', extra: {'error': e}));
          },
        ),
        BlocListener<FriendsDataBloc, FriendsDataState>(
          bloc: GetIt.I<FriendsDataBloc>(),
          listener: (BuildContext context, state) {
            setProcessTitle(AppStrings.splashLoadedFriendsData);
            state.when(
                init: () {},
                loaded: (_) {
                  friendsDataAreInitState = false;
                  checkLoadingThenRouteHome(
                      friendsRequestAreInitState,
                      friendsDataAreInitState,
                      meetDataAreInitState,
                      userDataAreInitState);
                },
                error: (e) => context.go('/errorScreen', extra: {'error': e}));
          },
        ),
        BlocListener<MeetDataBloc, MeetDataState>(
          bloc: GetIt.I<MeetDataBloc>(),
          listener: (BuildContext context, state) {
            setProcessTitle(AppStrings.splashLoadedMeetData);

            state.when(
                init: () {},
                loaded: (_) {
                  meetDataAreInitState = false;
                  checkLoadingThenRouteHome(
                      friendsRequestAreInitState,
                      friendsDataAreInitState,
                      meetDataAreInitState,
                      userDataAreInitState);
                },
                error: (e) => context.go('/errorScreen', extra: {'error': e}));
          },
        ),
        BlocListener<UserDataBloc, UserDataState>(
          bloc: GetIt.I<UserDataBloc>(),
          listener: (BuildContext context, state) {
            setProcessTitle(AppStrings.splashLoadedUserData);

            state.when(
                init: () {},
                loaded: (_) {
                  userDataAreInitState = false;
                  checkLoadingThenRouteHome(
                      friendsRequestAreInitState,
                      friendsDataAreInitState,
                      meetDataAreInitState,
                      userDataAreInitState);
                },
                error: (e) => context.go('/errorScreen', extra: {'error': e}));
          },
        ),
      ],
      child: Scaffold(
        backgroundColor: Color(0xFF433383),

        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(

            children: [
              // TODO: это не хорошо
              AnimatedBuilder(
                animation: controller,

                builder: (context, child) =>  Positioned(
                  top: 10,
                  left: 150- shake(controller.value)*100,
                  child: Transform.rotate(
                    
                    angle: shake(controller.value)*0.2,
                    child: Container(

                      child: SvgPicture.asset(
                        'assets/images/party.svg',

                      ),
                    ),
                  ),
                ),
              ),
              AnimatedBuilder(
                animation: controller,

                builder: (context, child) =>  Positioned(
                  top: 310,
                  left: 150- shake(controller.value)*100,
                  child: Container(

                    child: SvgPicture.asset(
                      'assets/images/party.svg',

                    ),
                  ),
                ),
              ),
              AnimatedBuilder(
                animation: controller,

                builder: (context, child) =>  Positioned(
                  top: 200,
                  left: 120- shake(controller.value)*50,
                  child: Container(

                    child: SvgPicture.asset(
                      'assets/images/party.svg',

                    ),
                  ),
                ),
              ),
              AnimatedBuilder(
                animation: controller,

                builder: (context, child) =>  Positioned(
                  top: 500,
                  left: 60- shake(controller.value)*200,
                  child: Container(

                    child: SvgPicture.asset(
                      'assets/images/party.svg',

                    ),
                  ),
                ),
              ),
              AnimatedBuilder(
                animation: controller,

                builder: (context, child) =>  Positioned(
                  left: -40 + shake(controller.value)*270,
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/images/phone.svg',

                    ),
                  ),
                ),
              ),
              AnimatedBuilder(
                animation: controller,

                builder: (context, child) =>  Positioned(
                  top: 250,
                  left: 70 + shake(controller.value)*180,
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/images/phone.svg',

                    ),
                  ),
                ),
              ),
              AnimatedBuilder(
                animation: controller,

                builder: (context, child) =>  Positioned(
                  top: 200,
                  left: - shake(controller.value)*300,
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/images/phone.svg',

                    ),
                  ),
                ),
              ),
              AnimatedBuilder(
                animation: controller,

                builder: (context, child) =>  Positioned(
                  top: 500,
                  left: 200- shake(controller.value)*300,
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/images/phone.svg',

                    ),
                  ),
                ),
              ),

              Text(processTitle),
            ],
          ),
        ),
      ),
    );
  }
}
