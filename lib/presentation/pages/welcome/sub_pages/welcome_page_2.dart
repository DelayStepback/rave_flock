import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage2 extends StatelessWidget {
  const WelcomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('''
        Найди моменты. 
        Компанию для вечеринки. 
        Воспоминания, которые будут греть твоё сердце.  
        Так что не тяни, давай начнем веселье
        ''',style: TextStyle(color: Colors.white, fontSize: 20.sp)),
        ),

    );
  }
}
