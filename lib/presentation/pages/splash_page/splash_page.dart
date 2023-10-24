import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../main.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);
    final session = supabase.auth.currentSession;
    if (!mounted) return;
    if (session != null) {
      context.go("/homepage");
    } else {
      context.go("/login");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: change to normal SPLASH view (fetch meets or smth)
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
