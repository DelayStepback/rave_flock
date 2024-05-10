import 'package:flutter/material.dart';
import 'package:rave_flock/common/localization.dart';

class CheckConnectivityScreen extends StatelessWidget {
  const CheckConnectivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.S.check_internet_connectivity),
            const Icon(
              Icons.emoji_food_beverage_outlined,
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}
