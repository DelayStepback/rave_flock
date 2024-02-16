import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class RoutingPage extends StatelessWidget {
  const RoutingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: RadialGradient(radius: 1.2.r, colors: [Color.fromARGB(255, 255, 110, 144), Colors.black])),
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
                    _SinglePanelWidget(
                      routePath: 'homePage',
                      assetPath: 'assets/images/cake.svg',
                      title: 'RAVES',
                    ),
                    SizedBox(
                      height: 46.h,
                    ),
                    _SinglePanelWidget(
                      routePath: 'friendsPage',
                      assetPath: 'assets/images/friendsCups.svg',
                      title: 'FRIENDS',
                      imageLeftAlignment: false,
                    ),
                    SizedBox(
                      height: 46.h,
                    ),
                    _SinglePanelWidget(
                      routePath: 'profilePage',
                      assetPath: 'assets/images/asian_person.svg',
                      title: 'My Profile',
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

class _SinglePanelWidget extends StatelessWidget {
  const _SinglePanelWidget({
    super.key,
    required this.routePath,
    this.imageLeftAlignment = true,
    required this.assetPath,
    required this.title,
  });
  final String routePath;
  final bool imageLeftAlignment;
  final String assetPath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(routePath);
      },
      child: Container(
        padding: EdgeInsets.all(16).r,
        width: 476.w,
        height: 246.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 10,
              offset: Offset(6, 3), // changes position of shadow
            ),
          ],
          gradient: RadialGradient(
              center: imageLeftAlignment ? Alignment.centerLeft : Alignment.centerRight,
              radius: 2.5.r,
              colors: [Colors.red, Color.fromARGB(255, 255, 218, 138)]),
          borderRadius: BorderRadius.circular(67.r),
          color: Color.fromARGB(255, 255, 193, 58),
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [..._buildList()],
        )),
      ),
    );
  }

  List<Widget> _buildList() {
    List<Widget> list = [];
    list.addAll([
      SvgPicture.asset(
        assetPath,
        height: 246.w,
      ),
      Text(title, style: TextStyle(color: Colors.black, fontSize: 36.sp))
    ]);
    return imageLeftAlignment ? list : list.reversed.toList();
  }
}
