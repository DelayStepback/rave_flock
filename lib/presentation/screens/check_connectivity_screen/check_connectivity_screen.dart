import 'package:flutter/material.dart';

class CheckConnectivityScreen extends StatelessWidget {
  const CheckConnectivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Проверьте подключение к интернету ;c'),
            Icon(
              Icons.emoji_food_beverage_outlined,
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}
