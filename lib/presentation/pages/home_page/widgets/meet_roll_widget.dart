import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/domain/entity/guest_entity/guest_entity.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_event.dart';

enum MeetRollWidgetEnum { allAccepted, createdByUser, invites }

String makeMeetRollGroupName(MeetRollWidgetEnum meetRollWidgetEnum) {
  switch (meetRollWidgetEnum) {
    case MeetRollWidgetEnum.allAccepted:
      return 'Принятые мероприятия';
    case MeetRollWidgetEnum.createdByUser:
      return 'Созданные вами';
    case MeetRollWidgetEnum.invites:
      return 'Приглашения';
  }
}

class MeetRollWidget extends StatefulWidget {
  const MeetRollWidget({
    super.key,
    required this.meetsEntities,
    required this.meetRollWidgetEnum,
    this.isInvitingButton = false,
    this.friendID = '',
  });
  final String friendID;
  final bool isInvitingButton;
  final List<MeetEntity> meetsEntities;
  final MeetRollWidgetEnum meetRollWidgetEnum;

  @override
  State<MeetRollWidget> createState() => MeetRollWidgetState();
}

class MeetRollWidgetState extends State<MeetRollWidget> {
  int _index = 0;

  @override
  void initState() {
    _index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.meetsEntities.length > 0) {
      return Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            Text(
              makeMeetRollGroupName(widget.meetRollWidgetEnum),
              style: TextStyle(fontSize: 28.sp),
            ),
            SizedBox(
              height: 286,
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
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Stack _buildMeetPanel(BuildContext context, int index) {
    String? meetOwnerUsername = widget.meetsEntities[index].usersGuests
        ?.firstWhere((element) => element.userId == widget.meetsEntities[index].meetModel.meetOwnerId,
            orElse: () => GuestEntity(
                  userId: '',
                  username: '',
                  fullName: '',
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
              if (!widget.isInvitingButton) {
                context.goNamed(
                  'meetPage',
                  pathParameters: {
                    'meetId': widget.meetsEntities[index].meetModel.meetId.toString(),
                  },
                );
              } else if (widget.meetsEntities[index].meetModel.meetId != null) {
                // TODO

                BlocProvider.of<MeetDataBloc>(context)
                    .add(MeetDataEvent.sendInvite(widget.friendID, widget.meetsEntities[index].meetModel.meetId!));
                Navigator.pop(context);
              }
            },
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(6, 3), // changes position of shadow
                    ),
                  ],
                  gradient:
                      RadialGradient(radius: 1.2.r, colors: const [Colors.black, Color.fromARGB(255, 156, 16, 49)]),
                  borderRadius: BorderRadius.circular(30).r),
              child: AnimatedContainer(
                width: 200,
                height: 200,
                curve: Curves.easeInOutQuad,
                duration: const Duration(seconds: 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: AnimatedOpacity(
                        curve: Curves.easeInQuad,
                        duration: const Duration(milliseconds: 800),
                        opacity: index == _index ? 1 : 0.0,
                        child: AnimatedContainer(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          curve: Curves.easeInQuad,
                          duration: const Duration(milliseconds: 900),
                          height: index == _index ? 50.w : 40.w,
                          width: index == _index ? 286.w : 140.w,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: index == _index
                                  ? const BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))
                                      .r
                                  : BorderRadius.circular(70).r),
                          child: Center(
                            child: Text(
                              '${widget.meetsEntities[index].meetModel.meetAt.day}.${widget.meetsEntities[index].meetModel.meetAt.month}.${widget.meetsEntities[index].meetModel.meetAt.year}',
                              maxLines: 1,
                              style: TextStyle(color: Colors.white, fontSize: 24.sp),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        '${meetOwnerUsername}',
                        style: const TextStyle(fontSize: 12, color: Colors.white38),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30).w,
                      child: Text(
                        widget.meetsEntities[index].meetModel.title,
                        style: const TextStyle(fontSize: 22, color: Colors.white),
                        maxLines: 2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30).w,
                      child: AnimatedContainer(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                            color: Colors.black),
                        width: index == _index ? 150.w : 50,
                        height: index == _index ? 100.h : 0,
                        curve: Curves.easeInQuad,
                        duration: const Duration(seconds: 1),
                        child: widget.meetsEntities[index].usersGuests?.length != null
                            ? GridView.builder(
                                // physics: const NeverScrollableScrollPhysics(),
                                padding: const EdgeInsets.all(8).r,
                                shrinkWrap: true,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                itemCount: widget.meetsEntities[index].usersGuests!.length <= 6
                                    ? widget.meetsEntities[index].usersGuests?.length
                                    : 6,
                                itemBuilder: (_, indexGuest) {
                                  return widget.meetsEntities[index].usersGuests?[indexGuest].avatarUrl == null
                                      ? const Icon(Icons.person)
                                      :
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(70).r,
                                        child: CachedNetworkImage(
                                          imageUrl: widget.meetsEntities[index].usersGuests![indexGuest].avatarUrl!,
                                          fit: BoxFit.cover,
                                        ),
                                      );
                                },
                              )
                            : const SizedBox.shrink(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
