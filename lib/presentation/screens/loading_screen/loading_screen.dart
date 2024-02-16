import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: RadialGradient(radius: 1.2.r, colors: [Color(0xFF5B1828), Colors.black])),
      child: Center(child: CircularProgressIndicator(strokeWidth: 2, color: Color(0xFFEEF140))),

    );
  }
}
