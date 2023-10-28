import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:rave_flock/common/themes/custom_default_input_theme.dart';
import 'package:rave_flock/injection_container.dart';
import 'package:rave_flock/presentation/bloc/friends_data_bloc/friends_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/friend_requests_bloc/friend_requests_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/user_data_bloc/user_data_bloc.dart';
import 'package:rave_flock/router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://clorjymfqklxrzmvkfij.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNsb3JqeW1mcWtseHJ6bXZrZmlqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc4MjAyOTYsImV4cCI6MjAxMzM5NjI5Nn0.LaA4aIavRjKTxlzez-CvbM3iF56JYHx77XWiR54Lwc0',
    authFlowType: AuthFlowType.pkce,
  );

  initializeDependencies(); // get_it
  runApp(const ScreenUtilApp());
}

final supabase = Supabase.instance.client;

class ScreenUtilApp extends StatelessWidget {
  const ScreenUtilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        title: 'Rave Flock',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          inputDecorationTheme: CustomDefaultInputTheme().theme(),
          useMaterial3: true,
        ),

    );
  }
}
