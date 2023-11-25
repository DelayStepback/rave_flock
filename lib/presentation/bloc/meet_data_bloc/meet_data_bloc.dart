import 'package:bloc/bloc.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/data/models/user/user_model.dart';
import 'package:rave_flock/data/repositories/meet_repository_supabase_impl.dart';
import 'package:rave_flock/domain/entity/guest_entity/guest_entity.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';
import 'package:rave_flock/domain/repositories/meet_repository.dart';
import 'package:rave_flock/services/auth_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../domain/repositories/user_repository.dart';
import 'meet_data_event.dart';
import 'meet_data_state.dart';

class MeetDataBloc extends Bloc<MeetDataEvent, MeetDataState> {
  final MeetRepository _meetRepository;
  final UserRepository _userRepository;

  MeetDataBloc(this._meetRepository, this._userRepository) : super(const MeetDataState.init()) {
    on<MeetDataInitializeEvent>(_onMeetDataInitializeEvent);
    on<MeetDataAddEvent>(_onMeetDataAddEvent);
    on<MeetDataDeleteEvent>(_onMeetDataDeleteEvent);
    on<MeetDataDisposeEvent>(_onMeetDataDisposeEvent);

    on<MeetDataUpdateCurrMeetInfo>(_onMeetDataUpdateCurrMeetInfo);
    on<MeetDataUpdateCurrMeetBasket>(_onMeetDataUpdateCurrMeetBasket);
    on<MeetDataUpdateCurrMeetGuests>(_onMeetDataUpdateCurrMeetGuests);

  }

  Future<void> _onMeetDataDisposeEvent(event, emit) async {
    emit(const MeetDataState.init());
    print('Meet disposed $state');
  }

  Future<void> _onMeetDataInitializeEvent(
      MeetDataInitializeEvent event, emit) async {
    emit(const MeetDataState.init());

    await Future.delayed(Duration(seconds: 4));
    try {
      List<MeetEntity> _meetsEntities = [];

      final meetsData = await _meetRepository.fetchUserMeets(event.userId);
      for (MeetModel meet in meetsData) {
        List<GuestEntity>? guests;
        List<BasketItemModel>? basketItems;

        if (meet.meetId != null) {
          guests = await _meetRepository.fetchGuests(meet.meetId!);
          if (meet.containsBasket) {
            basketItems =
                await _meetRepository.fetchBasketItemsOfMeet(meet.meetId!);
          }
        }
        _meetsEntities.add(MeetEntity(
            meetModel: meet, usersGuests: guests, allBasketData: basketItems));
      }
      emit(MeetDataState.loaded(allMeetData: _meetsEntities));
    } catch (e) {
      // emit(MeetDataState.error(error: e.toString()));
    }
  }

  Future<void> _onMeetDataAddEvent(MeetDataAddEvent event, emit) async {
    List<MeetEntity> _meets = [];

    await state
        .when(
            init: () {},
            loaded: (meets) async {
              for (var m in meets) {
                _meets.add(m);
              }
              // такого мероприятия нет
              if (event.meetModel.meetId == null) {
                try {
                  await _meetRepository.addMeet(event.meetModel).then(
                    (value) async {

                      // необходимо добавить себя как гостя
                      List<GuestEntity> newGuests =await _meetRepository.fetchGuests(value.meetId!);
                      print(newGuests);
                      _meets.add(MeetEntity(
                          meetModel: value,
                          usersGuests: newGuests,
                          allBasketData: []));

                      },
                  );
                } catch (e) {
                  print('error: $e');
                }
              }
              // если уже создано, обновляем
              else {
                try {
                  await _meetRepository
                      .updateMeet(event.meetModel)
                      .whenComplete(() {
                    // _meets - loaded meet entities
                    int index = _meets.indexWhere(
                        (e) => e.meetModel.meetId == event.meetModel.meetId);
                    _meets[index].meetModel = event.meetModel;
                  });
                } catch (e) {
                  print('error: $e');
                }
              }
            },
            error: (e) {})
        ?.whenComplete(() {
      emit(MeetDataState.loaded(allMeetData: _meets));
    });
  }

  Future<void> _onMeetDataDeleteEvent(MeetDataDeleteEvent event, emit) async {
    List<MeetEntity> _meets = [];

    await state
        .when(
            init: () {},
            loaded: (meets) async {
              for (var m in meets) {
                _meets.add(m);
              }

              try {
                await _meetRepository.deleteMeet(event.meetId).then(
                  (value) {
                    _meets.removeWhere(
                        (element) => element.meetModel.meetId == event.meetId);
                  },
                );
              } catch (e) {
                print('error: $e');
              }
            },
            error: (e) {})
        ?.whenComplete(() {
      emit(MeetDataState.loaded(allMeetData: _meets));
    });
  }

  Future<void> _onMeetDataUpdateCurrMeetInfo(
      MeetDataUpdateCurrMeetInfo event, emit) async {
    List<MeetEntity> newMeetEntities = [];
    await state
        .when(
            init: () {},
            loaded: (meetEntities) async {
              int ind = meetEntities.indexWhere(
                  (element) => element.meetModel.meetId == event.meetId);
              final newMeet = await _meetRepository.fetchMeet(event.meetId);
              newMeetEntities.addAll(meetEntities);
              newMeetEntities[ind] =
                  newMeetEntities[ind].copyWith(meetModel: newMeet);
            },
            error: (e) {})
        ?.whenComplete(
            () => emit(MeetDataState.loaded(allMeetData: newMeetEntities)));
  }

  Future<void> _onMeetDataUpdateCurrMeetBasket(
      MeetDataUpdateCurrMeetBasket event, emit) async {
    List<MeetEntity> newMeetEntities = [];
    await state
        .when(
        init: () {},
        loaded: (meetEntities) async {
          int ind = meetEntities.indexWhere(
                  (element) => element.meetModel.meetId == event.meetId);
          final newBasketItems = await _meetRepository.fetchBasketItemsOfMeet(event.meetId);
          newMeetEntities.addAll(meetEntities);

          newMeetEntities[ind] =
              newMeetEntities[ind].copyWith(allBasketData: newBasketItems);
        },
        error: (e) {})
        ?.whenComplete(
            () => emit(MeetDataState.loaded(allMeetData: newMeetEntities)));
  }

  Future<void> _onMeetDataUpdateCurrMeetGuests(
      MeetDataUpdateCurrMeetGuests event, emit) async {
    List<MeetEntity> newMeetEntities = [];
    await state
        .when(
        init: () {},
        loaded: (meetEntities) async {
          int ind = meetEntities.indexWhere(
                  (element) => element.meetModel.meetId == event.meetId);
          final newGuests = await _meetRepository.fetchGuests(event.meetId);
          newMeetEntities.addAll(meetEntities);
          newMeetEntities[ind] =
              newMeetEntities[ind].copyWith(usersGuests: newGuests);
        },
        error: (e) {})
        ?.whenComplete(
            () => emit(MeetDataState.loaded(allMeetData: newMeetEntities)));
  }

  @override
  Future<void> close() {
    print('meet bloc closed');
    return super.close();
  }
}
