import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/widget/text_input.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_event.dart';
import 'package:rave_flock/services/auth_service.dart';

import '../../../common/constants/enums/meet_status_enum.dart';

class CreateNewMeetScreen extends StatefulWidget {
  const CreateNewMeetScreen({super.key, this.meetModel});

  final MeetModel? meetModel;

  @override
  State<CreateNewMeetScreen> createState() => _CreateNewMeetScreenState();
}

class _CreateNewMeetScreenState extends State<CreateNewMeetScreen> {
  MeetModel? meetModel;

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
    return Scaffold(
      appBar: AppBar(
        title: meetModel == null
            ? Text('CreateNewMeetScreen')
            : Text('update exist meet'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextInput(
                label: 'Title',
                controller: _titleController,
                readOnly: meetModel == null ? false : true,
                maxLine: 1,
              ),
              SizedBox(
                height: 25,
              ),
              TextInput(
                label: 'description',
                controller: _descriptionController,
              ),
              SizedBox(
                height: 25,
              ),
              TextInput(
                label: 'Location',
                controller: _locationController,
                maxLine: 1,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'PRIVATE',
                    style: TextStyle(
                        color: !_meetIsPublic ? Colors.purple : Colors.black),
                  ),
                  Switch(
                      value: _meetIsPublic,
                      onChanged: (value) {
                        setState(() {
                          _meetIsPublic = value;
                        });
                      }),
                  Text(
                    'PUBLIC',
                    style: TextStyle(
                        color: _meetIsPublic ? Colors.purple : Colors.black),
                  ),
                ],
              ),
              Text(
                'BASKET CREATE?',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'NO',
                    style: TextStyle(
                        color: !_containsBasket ? Colors.purple : Colors.black),
                  ),
                  Switch(
                      value: _containsBasket,
                      onChanged: (value) {
                        setState(() {
                          _containsBasket = value;
                        });
                      }),
                  Text(
                    'YES',
                    style: TextStyle(
                        color: _containsBasket ? Colors.purple : Colors.black),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    print(_descriptionController.text.trim());
                    MeetModel _meet;
                    if (meetModel == null) {
                      _meet = MeetModel(
                          meetOwnerId: AuthService.getUserId()!,
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
                  },
                  child: meetModel == null ? Text('create') : Text('update'))
            ],
          ),
        ),
      ),
    );
  }
}
