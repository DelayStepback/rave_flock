import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:rave_flock/common/constants/enums/locale_enum.dart';
import 'package:rave_flock/common/gen/localization/app_localizations.dart';
import 'package:rave_flock/domain/entity/city_entity/city_entity.dart';
import 'package:rave_flock/domain/entity/config_entity/config_entity.dart';
import 'package:rave_flock/domain/repositories/cities_repository.dart';
import 'package:rave_flock/domain/repositories/config_subject.dart';
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

  await initializeDependencies(); // get_it

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
      child: OverlaySupport.global(child: AppWrapper()),
    );
  }
}

class AppWrapper extends StatefulWidget {
  const AppWrapper({super.key});

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  List<CityEntity>? cities;
  late final ConfigSubject configSubject;
  late final StreamSubscription configSubscription;
  ConfigEntity? configEntity;
  @override
  void initState() {
    super.initState();
    _initCities();
    configSubject = GetIt.I<ConfigSubject>();
    configSubscription = configSubject.observe().listen(
      (value) {
        // logger.d('listened $value : oldValue $configEntity');
        setState(
          () {
            configEntity = value;
          },
        );
      },
    );
  }

  void _initCities() {
    GetIt.I<CitiesRepository>().getCityEntities().then(
          (value) => setState(
            () {
              cities = value;
            },
          ),
        );
  }

  @override
  void dispose() {
    configSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CitiesInherited(
      cities: cities ?? [],
      child: ConfigInherited(
        configEntity: configEntity,
        child: const MyApp(),
      ),
    );
  }
}

class ConfigInherited extends InheritedWidget {
  final ConfigEntity? configEntity;

  const ConfigInherited({
    super.key,
    required this.configEntity,
    required super.child,
  });

  static ConfigInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ConfigInherited>()!;
  }

  @override
  bool updateShouldNotify(covariant ConfigInherited oldWidget) {
    // You can implement custom logic here to determine when to notify listeners
    return oldWidget.configEntity != configEntity;
  }
}

class CitiesInherited extends InheritedWidget {
  final List<CityEntity> cities;

  const CitiesInherited({
    super.key,
    required super.child,
    required this.cities,
  });

  static CitiesInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CitiesInherited>()!;
  }

  @override
  bool updateShouldNotify(covariant CitiesInherited oldWidget) {
    // You can implement custom logic here to determine when to notify listeners
    return oldWidget.cities != cities;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final config = ConfigInherited.of(context).configEntity;
    final selectedThemeMode = config?.darkTheme ?? ThemeMode.system;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Rave Flock',
      theme: lightThemeData(),
      darkTheme: darkThemeData(),
      themeMode: selectedThemeMode,

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale(
        config?.locale.name ?? LocaleEnum.en.name,
      ), // change it later
      supportedLocales: [
        Locale(LocaleEnum.en.name), // English
        Locale(LocaleEnum.ru.name), // Russian
      ],
    );
  }
}
