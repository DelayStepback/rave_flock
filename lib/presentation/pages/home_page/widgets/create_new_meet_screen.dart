import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/localization.dart';
import 'package:rave_flock/common/widget/text_input.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_event.dart';
import 'package:rave_flock/services/auth_service.dart';

import '../../../../common/constants/enums/meet_status_enum.dart';
import '../../../../common/validation/validation.dart';

class CreateNewMeetScreen extends StatefulWidget {
  const CreateNewMeetScreen({super.key, this.meetModel});

  final MeetModel? meetModel;

  @override
  State<CreateNewMeetScreen> createState() => _CreateNewMeetScreenState();
}

class _CreateNewMeetScreenState extends State<CreateNewMeetScreen> {
  MeetModel? meetModel;
  Timer? titleDebounceTimer;
  bool _titleValid = true;

  @override
  void initState() {
    super.initState();
    meetModel = widget.meetModel;
    if (meetModel != null) {
      initControllers(meetModel!);
    }
  }

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _locationController = TextEditingController();
  bool _meetIsPublic = false;
  bool _containsBasket = false;
  DateTime? _basketEndTime;
  DateTime _meetAtDateTime = DateTime.now();

  void _onChangeTitle(String value) {
    if (titleDebounceTimer?.isActive ?? false) {
      titleDebounceTimer?.cancel();
    }
    titleDebounceTimer = Timer(
      const Duration(milliseconds: 500),
      () {
        setState(
          () {
            _titleValid = Validation.validateTitle(value) == null;
            print(_titleValid);
          },
        );
      },
    );
  }

  @override
  void dispose() {
    titleDebounceTimer?.cancel();

    _titleController.dispose();
    _descriptionController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  void initControllers(MeetModel meetModel) {
    _meetIsPublic = meetModel.meetIsPublic;
    _containsBasket = meetModel.containsBasket;
    _titleController.text = meetModel.title;
    if (meetModel.description != null) {
      _descriptionController.text = meetModel.description!;
    }
    if (meetModel.location != null) {
      _locationController.text = meetModel.location!;
    }
    _meetIsPublic = meetModel.meetIsPublic;
    _containsBasket = meetModel.containsBasket;
    if (meetModel.basketEndTime != null) {
      _basketEndTime = meetModel.basketEndTime!;
    }
    _meetAtDateTime = meetModel.meetAt;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: RadialGradient(radius: 1.2.r, colors: [Color(0xFF5B1828), Colors.black])),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          backgroundColor: Colors.transparent,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                // padding: const EdgeInsets.all(20).r,
                children: [
                  SizedBox(height: 100.h),
                  TextInput(
                    label: context.S.title,
                    valid: _titleValid,
                    errorText: context.S.too_short_title,
                    controller: _titleController,
                    readOnly: meetModel == null ? false : true,
                    maxLine: 1,
                    onChanged: _onChangeTitle,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextInput(
                    label: context.S.description,
                    controller: _descriptionController,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextInput(
                    label: context.S.location,
                    controller: _locationController,
                    maxLine: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          context.S.private,
                          style: TextStyle(color: !_meetIsPublic ? Color(0xFFEEF140) : Colors.transparent),
                        ),
                      ),
                      Switch(
                          activeTrackColor: Color(0xFFEEF140),
                          value: _meetIsPublic,
                          onChanged: (value) {
                            setState(() {
                              _meetIsPublic = value;
                            });
                          }),
                      SizedBox(
                        width: 100,
                        child: Text(
                          context.S.public,
                          style: TextStyle(color: _meetIsPublic ? Color(0xFFEEF140) : Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          context.S.contains_basket,
                          style: TextStyle(color: !_containsBasket ? Color(0xFFEEF140) : Colors.transparent),
                        ),
                      ),
                      Switch(
                          activeTrackColor: Color(0xFFEEF140),
                          value: _containsBasket,
                          onChanged: (value) {
                            setState(() {
                              _containsBasket = value;
                            });
                          }),
                      SizedBox(
                        width: 100,
                        child: Text(
                          context.S.cart_added,
                          style: TextStyle(color: _containsBasket ? Color(0xFFEEF140) : Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  UnconstrainedBox(
                    child: SizedBox(
                      height: 40,
                      width: 120,
                      child: ElevatedButton(
                          onPressed: () {
                            createOrUpdateMeetAction(context);
                          },
                          child: meetModel == null ? Text(context.S.create) : Text(context.S.update)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void createOrUpdateMeetAction(BuildContext context) {
    MeetModel _meet;
    if (meetModel == null) {
      _meet = MeetModel(
          meetOwnerId: AuthService.getUserId() ?? '',
          title: _titleController.text.trim(),
          description: _descriptionController.text.trim(),
          location: _locationController.text.trim(),
          status: MeetStatusEnum.willBe,
          meetIsPublic: _meetIsPublic,
          containsBasket: _containsBasket,
          basketEndTime: _basketEndTime,
          meetAt: _meetAtDateTime);
    } else {
      _meet = MeetModel(
          createdAt: meetModel!.createdAt,
          meetId: meetModel!.meetId,
          meetOwnerId: meetModel!.meetOwnerId,
          title: meetModel!.title,
          status: meetModel!.status,
          meetIsPublic: _meetIsPublic,
          containsBasket: _containsBasket,
          description: _descriptionController.text.trim(),
          location: _locationController.text.trim(),
          basketEndTime: _basketEndTime,
          meetAt: _meetAtDateTime);
    }
    GetIt.I<MeetDataBloc>().add(MeetDataEvent.add(_meet));
    context.pop();
  }
}
