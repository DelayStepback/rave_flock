import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../services/auth_service.dart';
class RoutingPage extends StatelessWidget {
  const RoutingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.pushNamed('profilePage');
              },
              child: const Icon(Icons.person),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed('friendsPage');
              },
              child: const Icon(Icons.people_alt_sharp),
            ),
            TextButton(
              onPressed: () {
                AuthService.signOut();
                context.go('/');
              },
              child: const Text('signOut'),
            ),
          ],
        ),
      ),
    );
  }
}
