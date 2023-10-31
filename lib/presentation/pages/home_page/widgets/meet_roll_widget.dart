import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';

import '../../../../data/models/meet/meet_model.dart';

class MeetRollWidget extends StatefulWidget {
  const MeetRollWidget({super.key, required this.meetsEntities});

  final List<MeetEntity> meetsEntities;

  @override
  State<MeetRollWidget> createState() => MeetRollWidgetState();
}

class MeetRollWidgetState extends State<MeetRollWidget> {
  @override
  int _index = 0;

  void initState() {
    // TODO: implement initState
    _index = widget.meetsEntities.length - 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.0.h,
      child: PageView.builder(
        physics: const RangeMaintainingScrollPhysics(),
        controller: PageController(
            initialPage: widget.meetsEntities.length - 1,
            viewportFraction: 0.66.r),
        onPageChanged: (val) {
          setState(() {
            _index = val;
          });
        },
        scrollDirection: Axis.horizontal,
        itemCount: widget.meetsEntities.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    context.goNamed('meetPage', pathParameters: {
                      'meetId': widget.meetsEntities[index].meetModel.meetId
                          .toString(),
                    });
                  },
                  child: UnconstrainedBox(
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                          color: index == _index
                              ? Colors.brown
                              : Colors.brown.withOpacity(0.4),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(40))),
                      width: index == _index ? 250.0.w : 200.w,
                      height: index == _index ? 250.0.h : 200.h,
                      curve: Curves.easeInOutQuad,
                      duration: const Duration(seconds: 1),
                      child: Stack(
                        children: [
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                    '${widget.meetsEntities[index].meetModel.title}'),
                                Text(
                                    '${widget.meetsEntities[index].meetModel.description}'),
                                Text(
                                    '${widget.meetsEntities[index].meetModel.meetOwnerId}'),
                              ],
                            ),
                          ),
                          GridView.builder(
                              gridDelegate:
                                   const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4),
                              itemCount: widget.meetsEntities[index].usersGuests?.length,
                              itemBuilder: (_, indexGuest) {
                                return widget.meetsEntities[index].usersGuests?[indexGuest].avatarUrl == null?  CircleAvatar(
                                  radius: 15.r,
                                  backgroundColor: Colors.blue,):
                                CircleAvatar(
                                    radius: 15.r,
                                  backgroundColor: Colors.red, backgroundImage: NetworkImage(widget.meetsEntities[index].usersGuests![indexGuest].avatarUrl!));
                              })
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: AnimatedOpacity(
                  curve: Curves.easeInQuad,
                  duration: const Duration(seconds: 1),
                  opacity: index == _index ? 1 : 0,
                  child: AnimatedRotation(
                    curve: Curves.easeInQuad,
                    duration: const Duration(seconds: 1),
                    turns: index == _index ? 1 : 0.5,
                    child: SvgPicture.asset(
                      'assets/images/phone.svg',
                      width: 125,
                      height: 125,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: AnimatedOpacity(
                  curve: Curves.easeInQuad,
                  duration: const Duration(seconds: 3),
                  opacity: index == _index ? 1 : 0.5,
                  child: AnimatedContainer(
                    curve: Curves.easeInQuad,
                    duration: const Duration(seconds: 2),
                    height: index == _index ? 25 : 0,
                    width: index == _index ? 180 : 0,
                    decoration: BoxDecoration(
                        color: Colors.brown.shade800,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      '${widget.meetsEntities[index].meetModel.meetAt.day}.${widget.meetsEntities[index].meetModel.meetAt.month}.${widget.meetsEntities[index].meetModel.meetAt.year}',
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    )),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
