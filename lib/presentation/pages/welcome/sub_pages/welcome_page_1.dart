import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rave_flock/common/localization.dart';

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
          '${context.S.hi_rave}?',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
