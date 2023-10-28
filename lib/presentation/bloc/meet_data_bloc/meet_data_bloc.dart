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
    await Future.delayed(Duration(seconds: 4));
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

    await state.when(init: () {}, loaded: (meets) async {
      for (var m in meets) {
        _meets.add(m);
      }
      // такого мероприятия нет
      if (event.meetModel.meetId == null) {
        try {
          await _meetRepository.addMeet(event.meetModel).then((value){
              _meets.add(value);
          }
          );
        }
        catch (e) {
          print('error: $e');
        }
      }
      // если уже создано, обновляем
      else {
        try {
          await _meetRepository.updateMeet(event.meetModel).whenComplete(() {
            int index = _meets.indexWhere((e) =>
            e.meetId == event.meetModel.meetId);
            _meets[index] = event.meetModel;
          }
          );

        }
        catch (e) {
          print('error: $e');
        }
      }
    }, error: (e) {})?.whenComplete(() {
      emit(MeetDataState.loaded(allMeetData: _meets));
    });
  }

  @override
  Future<void> close() {
    print('meet bloc closed');
    return super.close();
  }

}
