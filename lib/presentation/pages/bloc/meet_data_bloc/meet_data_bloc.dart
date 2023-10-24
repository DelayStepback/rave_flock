import 'package:bloc/bloc.dart';
import 'package:rave_flock/data/repositories/meet_repository_supabase_impl.dart';
import 'package:rave_flock/domain/repositories/meet_repository.dart';

import 'meet_data_event.dart';
import 'meet_data_state.dart';


class MeetDataBloc extends Bloc<MeetDataEvent, MeetDataState> {
  final MeetRepository _meetRepository;

  MeetDataBloc(this._meetRepository)
      : super(const MeetDataState.init()) {
    on<MeetDataInitializeEvent>(_onMeetDataInitializeEvent);
  }
  Future<void> _onMeetDataInitializeEvent(MeetDataInitializeEvent event, emit) async {
    // TODO: delete
    await Future.delayed(Duration(seconds: 5));
    try{
      final meets = await _meetRepository.fetchUserMeets(event.userId);
      emit(MeetDataState.loaded(allMeetData: meets));
    }
    catch(e){
      emit(MeetDataState.error(error: e.toString()));
    }
  }


}
