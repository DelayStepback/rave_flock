import 'dart:math';

import 'package:flutter/material.dart';

class WelcomePage1 extends StatelessWidget {
  const WelcomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: LinearGradient(
        transform: GradientRotation(pi/7),
        colors: [Colors.black, Color.fromARGB(255, 91, 24, 40), ]
  ,      begin: Alignment.center
        ,
  end: Alignment.centerLeft
        )),
      child: Center(
        child: Text(
          'Привет. Рейв?',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
