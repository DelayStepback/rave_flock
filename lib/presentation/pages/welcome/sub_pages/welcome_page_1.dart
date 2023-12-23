import 'package:flutter/material.dart';

class WelcomePage1 extends StatelessWidget {
  const WelcomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Привет.',
        style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Colors.white),
      ),
    );
  }
}
