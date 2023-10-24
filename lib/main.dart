import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/presentation/pages/auth/set_username_screen.dart';
import 'package:rave_flock/presentation/pages/auth/login_page.dart';
import 'package:rave_flock/presentation/pages/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:rave_flock/presentation/pages/bloc/friend_requests_bloc/friend_requests_state.dart';
import 'package:rave_flock/presentation/pages/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/pages/home_page/home_page.dart';
import 'package:rave_flock/presentation/pages/splash_page/splash_page.dart';
import 'package:rave_flock/presentation/screens/friend_requests_screen/friend_requests_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'data/repositories/friends_repository_supabase_impl.dart';
import 'data/repositories/meet_repository_supabase_impl.dart';
import 'data/repositories/user_repository_supabase_impl.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://clorjymfqklxrzmvkfij.supabase.co',
    anonKey:
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNsb3JqeW1mcWtseHJ6bXZrZmlqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc4MjAyOTYsImV4cCI6MjAxMzM5NjI5Nn0.LaA4aIavRjKTxlzez-CvbM3iF56JYHx77XWiR54Lwc0',
    authFlowType: AuthFlowType.pkce,
  );

  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: "/homepage",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/setUsername",
      builder: (context, state) => const SetUsernameScreen(),
    ),
    GoRoute(
        path: "/friendRequestsScreen",
        builder: (context, state) {
          return FriendRequestsScreen();
        })
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(

          create: (context) =>
              FriendRequestsBloc(
                  FriendsRepositorySupabaseImpl(),
                  UserRepositorySupabaseImpl()),),
        BlocProvider(
          create: (context) => MeetDataBloc(MeetRepositorySupabaseImpl()),
        )
      ],
      child: MaterialApp.router(
        routerConfig: _router,
        title: 'Rave Flock',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
