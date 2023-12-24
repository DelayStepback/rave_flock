import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class RoutingPage extends StatelessWidget {
  const RoutingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: RadialGradient(radius: 1.2.r, colors: [Color.fromARGB(255, 255, 110, 144), Colors.black])),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56.0).w,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.pushNamed('homePage');
                      },
                      child: Container(
                        padding: EdgeInsets.all(16).r,
                        width: 476.w,
                        height: 246.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(67.r),
                          color: Color.fromARGB(255, 255, 193, 58),
                        ),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              'assets/images/cake.svg',
                              height: 246.w,
                            ),
                            Text('RAVES', style: TextStyle(color: Colors.black, fontSize: 36.sp)),
                          ],
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 46.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed('friendsPage');
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 40, top: 0).r,
                        width: 476.w,
                        height: 246.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(67.r),
                          color: Color.fromARGB(255, 255, 193, 58),
                        ),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Friends', style: TextStyle(color: Colors.black, fontSize: 36.sp)),
                            SvgPicture.asset(
                              'assets/images/friendsCups.svg',
                              height: 246.w,
                            ),
                          ],
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 46.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed('profilePage');
                      },
                      child: Container(
                        padding: EdgeInsets.all(16).r,
                        width: 476.w,
                        height: 246.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(67.r),
                          color: Color.fromARGB(255, 255, 193, 58),
                        ),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              'assets/images/asian_person.svg',
                              width: 160.w,
                            ),
                            Text('My profile', style: TextStyle(color: Colors.black, fontSize: 36.sp)),
                          ],
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
