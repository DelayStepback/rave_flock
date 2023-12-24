import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_state.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';
import 'package:rave_flock/services/blocs_service.dart';
import '../../../common/app_string.dart';
import '../../../main.dart';
import '../../bloc/friends_data_bloc/friends_data_state.dart';
import '../../bloc/user_data_bloc/user_data_bloc.dart';
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
    ], child: const _SplashPage());
  }
}

class _SplashPage extends StatefulWidget {
  const _SplashPage({super.key});

  @override
  State<_SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<_SplashPage> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 10),
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
    await Future.delayed(const Duration(seconds: 2));

    final session = supabase.auth.currentSession;
    if (!mounted) return;
    if (session != null) {
      BlocService.initAllBlocs();
    } else {
      BlocService.resetBlocs();
      context.go("/login");
    }
  }

  void checkLoadingThenRouteHome(bool userDataAreInitState) {
    if (!userDataAreInitState) {
      context.go("/routingPage");
    }
  }

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
        listenerLoadingUserDataBloc(),
      ],
      child: Scaffold(
        backgroundColor: const Color(0xFF7A2525),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              AnimatedBuilder(
                animation: controller,
                builder: (context, child) => Align(
                  alignment: Alignment.center,
                  child: Transform.rotate(
                    angle: shake(controller.value) * 0.2,
                    child: Container(
                      child: SvgPicture.asset(
                        'assets/images/phone.svg',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BlocListener<UserDataBloc, UserDataState> listenerLoadingUserDataBloc() {
    return BlocListener<UserDataBloc, UserDataState>(
      bloc: GetIt.I<UserDataBloc>(),
      listener: (BuildContext context, state) {
        setProcessTitle(AppStrings.splashLoadedUserData);

        state.when(
            init: () {},
            loaded: (_) {
              if (_.username == null) {
                context.go("/setUsername");
              } else {
                userDataAreInitState = false;
                checkLoadingThenRouteHome(
                    userDataAreInitState);
              }
            },
            error: (e) => context.go('/errorScreen', extra: {'error': e}));
      },
    );
  }

  
}
