import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/constants/enums/user_permission_enum.dart';
import 'package:rave_flock/common/constants/enums/user_privacy_enum.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import 'package:rave_flock/presentation/pages/SetUsernameScreen.dart';
import 'package:rave_flock/presentation/pages/auth/account_page.dart';
import 'package:rave_flock/presentation/pages/auth/login_page.dart';
import 'package:rave_flock/presentation/pages/home_page/home_page.dart';
import 'package:rave_flock/presentation/pages/splash/splash_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
      path: "/account",
      builder: (context, state) => const AccountPage(),
    ),
    GoRoute(
      path: "/homepage",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(path: "/setUsername",
      builder: (context, state) => const SetUsernameScreen(),

    )
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Rave Flock',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
