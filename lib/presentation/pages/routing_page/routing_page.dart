import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RoutingPage extends StatelessWidget {
  const RoutingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 56.0).w,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    context.pushNamed('homePage');

                  },
                  child: Container(

                    width: 476.w,
                    height: 246.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(67.r),
                    color: Color(0xFFF9DA9B),
                    ),
                    child: Center(child: Text('Meets', style: TextStyle(color: Colors.black),)),
                  ),
                ),
                SizedBox(height: 46.h,),


                GestureDetector(
                  onTap: (){
                    context.pushNamed('friendsPage');

                  },
                  child: Container(

                    width: 476.w,
                    height: 246.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(67.r),
                      color: Color(0xFFF9DA9B),
                    ),
                    child: Center(child: Text('friends', style: TextStyle(color: Colors.black))),
                  ),
                ),
                SizedBox(height: 46.h,),

                GestureDetector(
                  onTap: (){
                    context.pushNamed('profilePage');

                  },
                  child: Container(

                    width: 476.w,
                    height: 246.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(67.r),
                      color: Color(0xFFF9DA9B),
                    ),
                    child: Center(child: Text('profilePage', style: TextStyle(color: Colors.black))),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
