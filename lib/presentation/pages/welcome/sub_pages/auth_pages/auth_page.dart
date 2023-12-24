import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rave_flock/presentation/pages/welcome/sub_pages/widgets/input_window_widget.dart';
import 'dart:math';
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(
        transform: GradientRotation(pi/7),
        colors: [Colors.black, Color.fromARGB(255, 91, 24, 40), ]
  ,      begin: Alignment.center
        ,
  end: Alignment.centerRight
        )),

      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Stack(
              children: [
                Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.all(40.r),
                    child: Text(
                      'Рейв.. Флак? Нет. Флок',
                      style: Theme.of(context).textTheme.titleLarge,
                    )),
                    Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                            'assets/images/fight_club_poster.svg',width: 500.w,
                          ),
                    ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 170).h,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFF87676)),
                          onPressed: () {
                            _buildShowBottomSheet(context, InputWindowWidgetType.signUp);
                          },
                          child: SizedBox(
                            width: 327.w,
                            height: 39.h,
                            child: const Center(
                              child: Text(
                                'Регистрация',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _buildShowBottomSheet(context, InputWindowWidgetType.login);
                          },
                          child: SizedBox(
                            width: 327.w,
                            height: 39.h,
                            child: const Center(
                              child: Text(
                                'Вход',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PersistentBottomSheetController<dynamic> _buildShowBottomSheet(
      BuildContext context, InputWindowWidgetType inputWindowWidgetType) {
    return showBottomSheet(
        enableDrag: false,
        context: context,
        builder: (_) {
          return Padding(
            padding: EdgeInsets.only(top: MediaQueryData.fromView(WidgetsBinding.instance.window).padding.top),
            child: SizedBox(
              height: double.infinity,
              child: InputWindowWidget(inputWindowWidgetType: inputWindowWidgetType),
            ),
          );
        });
  }
}
