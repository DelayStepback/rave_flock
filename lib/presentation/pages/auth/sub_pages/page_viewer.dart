import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rave_flock/presentation/pages/auth/sub_pages/welcome_page_1.dart';
import 'package:rave_flock/presentation/pages/auth/sub_pages/welcome_page_2.dart';

import 'login_page.dart';

class PageViewer extends StatefulWidget {
  const PageViewer({super.key});

  @override
  State<PageViewer> createState() => PageViewerState();
}

class PageViewerState extends State<PageViewer> {
  PageController pageController = PageController(initialPage: 0);
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              setState(() {
                page = value;
              });
            },
            controller: pageController,
            children: [
              const WelcomePage1(),
              const WelcomePage2(),
              const LoginPage(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0).h,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: TextButton(
                    onPressed: () {
                      pageController.animateToPage(2,
                          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                      setState(() {
                        page = 2;
                      });
                    },
                    child: Text('skip'),
                  ),
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _indicators(3, page)),
          )
        ],
      ),
    );
  }
}

List<Widget> _indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(
    imagesLength,
    (index) {
      return AnimatedContainer(
        duration: const Duration(seconds: 2),
        margin: EdgeInsets.only(
                left: 3, right: 3, top: currentIndex == index ? 0 : 20.h)
            .w,
        width: 30.w,
        height: 30.h,
        //currentIndex == index ? 30.h : 25.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(51)).w),
        child: Visibility(
          visible: index == 2,
          child: Icon(
            Icons.lock_open,
            color: Colors.black,
          ),
        ),
      );
    },
  );
}
