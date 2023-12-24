import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rave_flock/presentation/pages/welcome/sub_pages/welcome_page_1.dart';
import 'package:rave_flock/presentation/pages/welcome/sub_pages/welcome_page_2.dart';

import 'auth_pages/auth_page.dart';

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
            children: const [
              WelcomePage1(),
              WelcomePage2(),
              AuthPage(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0).h,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    visible: page != 2,
                    child: AnimatedOpacity(
                      opacity: page != 2 ? 1 : 0,
                      curve: Curves.easeIn,
                      duration: const Duration(milliseconds: 300),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white.withOpacity(0.1)),
                        onPressed: () {
                          pageController.animateToPage(2,
                              duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
                          setState(() {
                            page = 2;
                          });
                        },
                        child: SizedBox(
                          width: 150.w,
                          height: 43.h,
                          child: const Center(
                            child: Text(
                              'Пропустить',
                              style: TextStyle(color: Colors.white38),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: _indicators(context, 3, page)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> _indicators(context, imagesLength, currentIndex) {
  return List<Widget>.generate(
    imagesLength,
    (index) {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
        margin: EdgeInsets.only(left: 12.5.r, right: 12.5.r, top: currentIndex == index ? 0 : 20.h).w,
        width: 28.w,
        height: 28.h,
        //currentIndex == index ? 30.h : 25.h,
        decoration: BoxDecoration(
            color: index == currentIndex ? Color.fromARGB(255, 91, 24, 40) : Colors.white60,
            borderRadius: const BorderRadius.all(Radius.circular(51)).w),
        child: Visibility(
          visible: index == 2,
          child: Icon(
            Icons.lock_open,
            size: 18.r,
            color: index == currentIndex ? Colors.white : Colors.black,
          ),
        ),
      );
    },
  );
}
