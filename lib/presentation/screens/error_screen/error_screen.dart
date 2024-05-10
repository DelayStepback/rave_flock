import 'package:flutter/material.dart';
import 'package:rave_flock/common/localization.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, required this.error});
  final String error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(context.S.something_went_wrong),
          // Text('$error'),
        ],
      )),
    );
  }
}
