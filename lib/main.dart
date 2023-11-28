import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rave_flock/common/themes/custom_default_input_theme/custom_default_input_theme_light.dart';
import 'package:rave_flock/injection_container.dart';
import 'package:rave_flock/presentation/router/router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'common/themes/theme.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // initialize supabase
  await Supabase.initialize(
    url: 'https://clorjymfqklxrzmvkfij.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNsb3JqeW1mcWtseHJ6bXZrZmlqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTc4MjAyOTYsImV4cCI6MjAxMzM5NjI5Nn0.LaA4aIavRjKTxlzez-CvbM3iF56JYHx77XWiR54Lwc0',
    authFlowType: AuthFlowType.pkce,
  );

  initializeDependencies(); // get_it

  FlutterNativeSplash.remove();
  runApp(const ScreenUtilApp());
}

final supabase = Supabase.instance.client;

class ScreenUtilApp extends StatelessWidget {
  const ScreenUtilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(587, 1176),
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
        theme: lightThemeData(),
        darkTheme: darkThemeData(),
        themeMode: ThemeMode.dark,
    );
  }
}
