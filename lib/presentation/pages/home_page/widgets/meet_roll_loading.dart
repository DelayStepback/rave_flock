import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rave_flock/presentation/pages/home_page/widgets/meet_roll_widget.dart';
import 'package:shimmer/shimmer.dart';

class MeetRollLoading extends StatefulWidget {
  const MeetRollLoading({super.key, required this.meetRollWidgetEnum});
  final MeetRollWidgetEnum meetRollWidgetEnum;
  @override
  State<MeetRollLoading> createState() => _MeetRollLoadingState();
}

class _MeetRollLoadingState extends State<MeetRollLoading> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        children: [
          Text(
            makeMeetRollGroupName(context, widget.meetRollWidgetEnum),
            style: TextStyle(fontSize: 28.sp),
          ),
          SizedBox(
            height: 286.h,
            child: PageView.builder(
              // physics: ScrollPhysics(),
              // physics: const RangeMaintainingScrollPhysics(),
              controller: PageController(initialPage: 0, viewportFraction: 0.76.r),
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return _buildMeetLoadingPanel(context, index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMeetLoadingPanel(BuildContext context, int index) {
    return UnconstrainedBox(
      child: _Skelton(
        height: 200,
        width: 200,
      ),
    );
  }
}

class _Skelton extends StatelessWidget {
  const _Skelton({super.key, required this.height, required this.width});

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(milliseconds: 1200),
      baseColor: Colors.black,
      highlightColor: Colors.grey,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
