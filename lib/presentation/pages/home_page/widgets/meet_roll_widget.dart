import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/constants/enums/guest_choose_at_meet_enum.dart';
import 'package:rave_flock/common/constants/enums/user_permission_enum.dart';
import 'package:rave_flock/common/constants/enums/user_privacy_enum.dart';
import 'package:rave_flock/common/widget/glass_morphism.dart';
import 'package:rave_flock/data/models/guest/guest_model.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import 'package:rave_flock/domain/entity/guest_entity/guest_entity.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';
import 'package:rave_flock/services/auth_service.dart';

import '../../../../common/constants/enums/meet_status_enum.dart';
import '../../../../data/models/meet/meet_model.dart';

enum MeetRollWidgetEnum { allAccepted, createdByUser, invites }

class MeetRollWidget extends StatefulWidget {
  const MeetRollWidget({
    super.key,
    required this.meetsEntities,
    required this.meetRollWidgetEnum,
  });

  final List<MeetEntity> meetsEntities;
  final MeetRollWidgetEnum meetRollWidgetEnum;

  @override
  State<MeetRollWidget> createState() => MeetRollWidgetState();
}
class MeetRollWidgetState extends State<MeetRollWidget> {
  @override
  int _index = 0;

  @override
  void initState() {
    _index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.meetsEntities.length > 0) {
      return Column(
        children: [
          Text('${widget.meetRollWidgetEnum.name}'),
          SizedBox(
            height: 286.h,
            child: PageView.builder(
              // physics: const RangeMaintainingScrollPhysics(),
              controller: PageController(initialPage: 0, viewportFraction: 0.76.r),
              onPageChanged: (val) {
                setState(() {
                  _index = val;
                });
              },
              scrollDirection: Axis.horizontal,
              itemCount: widget.meetsEntities.length,
              itemBuilder: (context, index) {
                return _buildMeetPanel(context, index);
              },
            ),
          ),
        ],
      );
    }
    else{
      return SizedBox.shrink();
    }
  }


  Stack _buildMeetPanel(BuildContext context, int index) {
    String? meetOwnerUsername = widget.meetsEntities[index].usersGuests
        ?.firstWhere(
            (element) =>
                element.userId ==
                widget.meetsEntities[index].meetModel.meetOwnerId,
            orElse: () => GuestEntity(
                  userId: '',
                  username: '',
                  nickname: '',
                  avatarUrl: '',
                  status: '',
                ))
        .username;
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              context.goNamed('meetPage', pathParameters: {
                'meetId':
                    widget.meetsEntities[index].meetModel.meetId.toString(),
              });
            },
            child: UnconstrainedBox(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)),
                child: AnimatedContainer(
                  width: 286.r,
                  height: 286.r,
                  padding: const EdgeInsets.only(top: 20, left: 30),
                  curve: Curves.easeInOutQuad,
                  duration: const Duration(seconds: 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AnimatedOpacity(
                        curve: Curves.easeInQuad,
                        duration: const Duration(milliseconds: 400),
                        opacity: index == _index ? 1 : 0.5,
                        child: AnimatedContainer(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          curve: Curves.easeInQuad,
                          duration: const Duration(milliseconds: 900),
                          height: index == _index ? 35 : 0,
                          width: index == _index ? 210 : 0,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            '${widget.meetsEntities[index].meetModel.meetAt.day}.${widget.meetsEntities[index].meetModel.meetAt.month}.${widget.meetsEntities[index].meetModel.meetAt.year} * ${widget.meetsEntities[index].usersGuests?.firstWhere((element) => element.userId == AuthService.getUserId(), orElse: () => GuestEntity(username: '', userId: '', nickname: '', avatarUrl: '', status: '')).status}',
                            maxLines: 1,
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.sp),
                          )),
                        ),
                      ),
                      Text(
                        '${widget.meetsEntities[index].meetModel.title}',
                        style:
                            const TextStyle(fontSize: 35, color: Colors.white),
                        maxLines: 1,
                      ),
                      AnimatedContainer(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: Colors.white),
                        width: index == _index ? 150.w : 50,
                        height: index == _index ? 100.h : 0,
                        curve: Curves.easeInQuad,
                        duration: const Duration(seconds: 1),
                        child: Column(
                          children: [
                            Expanded(
                              child: widget.meetsEntities[index].usersGuests
                                          ?.length !=
                                      null
                                  ? GridView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                      ),
                                      itemCount: widget.meetsEntities[index]
                                                  .usersGuests!.length <=
                                              6
                                          ? widget.meetsEntities[index]
                                              .usersGuests?.length
                                          : 6,
                                      itemBuilder: (_, indexGuest) {
                                        return widget
                                                    .meetsEntities[index]
                                                    .usersGuests?[indexGuest]
                                                    .avatarUrl ==
                                                null
                                            ? const CircleAvatar(
                                                backgroundColor:
                                                    Colors.blueAccent,
                                              )
                                            : CircleAvatar(
                                                backgroundColor: Colors.red,
                                                backgroundImage: NetworkImage(
                                                    widget
                                                        .meetsEntities[index]
                                                        .usersGuests![
                                                            indexGuest]
                                                        .avatarUrl!));
                                      })
                                  : const SizedBox.shrink(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
