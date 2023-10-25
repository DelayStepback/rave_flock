import 'package:bloc/bloc.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/data/repositories/meet_repository_supabase_impl.dart';
import 'package:rave_flock/domain/repositories/meet_repository.dart';

import 'meet_data_event.dart';
import 'meet_data_state.dart';


class MeetDataBloc extends Bloc<MeetDataEvent, MeetDataState> {
  final MeetRepository _meetRepository;

  MeetDataBloc(this._meetRepository)
      : super(const MeetDataState.init()) {
    on<MeetDataInitializeEvent>(_onMeetDataInitializeEvent);
    on<MeetDataAddEvent>(_onMeetDataAddEvent);
    on<MeetDataDisposeEvent>(_onMeetDataDisposeEvent);
  }

  Future<void>_onMeetDataDisposeEvent(event,emit)async {
    emit(const MeetDataState.init());
    print('Meet disposed $state');
  }

  Future<void> _onMeetDataInitializeEvent(MeetDataInitializeEvent event,
      emit) async {
    try {
      final meets = await _meetRepository.fetchUserMeets(event.userId);
      emit(MeetDataState.loaded(allMeetData: meets));
    }
    catch (e) {
      // emit(MeetDataState.error(error: e.toString()));
    }
  }

  Future<void> _onMeetDataAddEvent(MeetDataAddEvent event, emit) async {
    List<MeetModel> _meets = [];

    state.when(init: () {}, loaded: (meets) async {
      for (var m in meets) {
        _meets.add(m);
      }
      // такого мероприятия нет
      if (event.meetModel.meetId == null) {
        try {
          final newMeet = await _meetRepository.addMeet(event.meetModel);
          _meets.add(newMeet);
        }
        catch (e) {
          print('error: $e');
        }
      }
      // если уже создано, обновляем
      else {
        try {
          int index = _meets.indexWhere((e) =>
          e.meetId == event.meetModel.meetId);
          _meets[index] = event.meetModel;
          await _meetRepository.updateMeet(event.meetModel);
        }
        catch (e) {
          print('error: $e');
        }
      }
    }, error: (e) {});
    emit(MeetDataState.loaded(allMeetData: _meets));
  }

  @override
  Future<void> close() {
    print('meet bloc closed');
    return super.close();
  }

}
