import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rave_flock/common/localization.dart';

class WelcomePage2 extends StatelessWidget {
  const WelcomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(context.S.welcome_page_2_description,style: TextStyle(color: Colors.white, fontSize: 20.sp)),
        ),

    );
  }
}
