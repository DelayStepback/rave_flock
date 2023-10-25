import 'package:flutter/material.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';

class CreateNewMeetScreen extends StatefulWidget {
  const CreateNewMeetScreen({super.key, this.meetModel});

  final MeetModel? meetModel;

  @override
  State<CreateNewMeetScreen> createState() => _CreateNewMeetScreenState();
}

class _CreateNewMeetScreenState extends State<CreateNewMeetScreen> {
  final _titleController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateNewMeetScreen'),
      ),
      body: Center(child:Text('ss')),
    );
  }
}
