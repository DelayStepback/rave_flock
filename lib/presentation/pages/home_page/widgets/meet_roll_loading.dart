import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rave_flock/common/constants/enums/meet_status_enum.dart';

class MeetRollLoading extends StatefulWidget {
  const MeetRollLoading({super.key});
  @override
  State<MeetRollLoading> createState() => _MeetRollLoadingState();
}

class _MeetRollLoadingState extends State<MeetRollLoading> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 286.h,
      child: PageView.builder(
        // physics: ScrollPhysics(),
        // physics: const RangeMaintainingScrollPhysics(),
        controller: PageController(
            initialPage: 0,
            viewportFraction: 0.76.r),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return _buildMeetLoadingPanel(context, index);
        },
      ),
    );
  }

  Stack _buildMeetLoadingPanel(BuildContext context, int index) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: UnconstrainedBox(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30)),
                child: AnimatedContainer(
                  width: 286.r,
                  height: 286.r,
                  padding: EdgeInsets.only(top: 20, left: 30),
                  curve: Curves.easeInOutQuad,
                  duration: const Duration(seconds: 1),
                  // child: Text('bla')
                ),
              ),
            ),
          ),

      ],
    );
  }
}