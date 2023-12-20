import 'package:bloc/bloc.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/domain/entity/guest_entity/guest_entity.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';
import 'package:rave_flock/domain/repositories/meet_repository.dart';

import '../../../domain/repositories/user_repository.dart';
import 'meet_data_event.dart';
import 'meet_data_state.dart';



class MeetDataBloc extends Bloc<MeetDataEvent, MeetDataState> {
  final MeetRepository _meetRepository;
  final UserRepository _userRepository;

  MeetDataBloc(this._meetRepository, this._userRepository)
      : super(const MeetDataState.init()) {
    on<MeetDataInitializeEvent>(_onMeetDataInitializeEvent);
    on<MeetDataAddEvent>(_onMeetDataAddEvent);
    on<MeetDataDeleteEvent>(_onMeetDataDeleteEvent);
    on<MeetDataDisposeEvent>(_onMeetDataDisposeEvent);

    on<MeetDataUpdateCurrMeetInfo>(_onMeetDataUpdateCurrMeetInfo);
    on<MeetDataUpdateCurrMeetBasket>(_onMeetDataUpdateCurrMeetBasket);
    on<MeetDataUpdateCurrMeetGuests>(_onMeetDataUpdateCurrMeetGuests);
    on<MeetDataSearchEvent>(_onMeetDataSearchEvent);
    on<MeetDataUnSearchEvent>(_onMeetDataUnSearchEvent);
  }

  Future<void> _onMeetDataSearchEvent(MeetDataSearchEvent event, emit) async {
    print('search  ${event.titleLike}');
    print(state);
    state.when(
        init: () {},
        loaded: (meets) {
          List<MeetEntity> _newMeets = [];
          print('search-loaded');
          for (var meet in meets) {
            if (meet.meetModel.title
                .toLowerCase()
                .contains(event.titleLike.toLowerCase())) {
              _newMeets.add(meet);
            }
          }

          emit(MeetDataState.search(
              allMeetData: meets, meetsSearched: _newMeets));
        },
        search: (meets, searchMeets) {
          List<MeetEntity> _newMeets = [];
          for (var meet in meets) {
            if (meet.meetModel.title
                .toLowerCase()
                .contains(event.titleLike.toLowerCase())) {

              _newMeets.add(meet);
            }
          }

          emit(MeetDataState.search(
              allMeetData: meets, meetsSearched: _newMeets));
        },
        error: (error) {
          emit(MeetDataState.error(error: error));
        });
  }

  Future<void> _onMeetDataUnSearchEvent(
      MeetDataUnSearchEvent event, emit) async {
    state.when(
        init: () {},
        loaded: (loaded) {},
        search: (allItems, searchedItems) {
          emit(MeetDataState.loaded(allMeetData: allItems));
        },
        error: (error) {});
  }

  Future<void> _onMeetDataDisposeEvent(event, emit) async {
    emit(const MeetDataState.init());
    print('Meet disposed $state');
  }

  Future<void> _onMeetDataInitializeEvent(
      MeetDataInitializeEvent event, emit) async {
    emit(const MeetDataState.init());
    await Future.delayed(const Duration(seconds: 4));
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
      print(e);
      // emit(MeetDataState.error(error: e.toString()));
    }
  }

  Future<void> _onMeetDataAddEvent(MeetDataAddEvent event, emit) async {
    List<MeetEntity> _meets = [];
    await state
        .when(
            init: () {},
            loaded: (meets) async {
              _meets = await _meetDataAddLoaded(meets, event);

            },
            error: (e) {},
            search:
                (List<MeetEntity> meets, List<MeetEntity> meetsSearched) async {
              _meets = await _meetDataAddLoaded(meets, event);
            })
        ?.whenComplete(
      () {
        print('-'*40);
        print("EMMITED:");
        print(_meets);
        print('-'*40);
        emit(MeetDataState.loaded(allMeetData: _meets));
      },
    );
  }

  Future<List<MeetEntity>> _meetDataAddLoaded(List<MeetEntity> meets,
       MeetDataAddEvent event) async {
    final _meets = [...meets];
    print('-'*40);
    print(_meets);
    print('-'*40);
    // такого мероприятия нет
    if (event.meetModel.meetId == null) {
      try {
        await _meetRepository.addMeet(event.meetModel).then(
          (value) async {
            List<GuestEntity> newGuests =
                await _meetRepository.fetchGuests(value.meetId!);
            print(newGuests);
            _meets.add(MeetEntity(
                meetModel: value, usersGuests: newGuests, allBasketData: []));
          },
        );
      } catch (e) {
        print('error: $e');
      }
      return _meets;
    }
    // если уже создано, обновляем
    else {
      try {
        await _meetRepository.updateMeet(event.meetModel).whenComplete(() {
          int index = _meets
              .indexWhere((e) => e.meetModel.meetId == event.meetModel.meetId);
          _meets[index].meetModel = event.meetModel;
        });
      } catch (e) {
        print('error: $e');
      }
      return _meets;

    }
  }

  Future<void> _onMeetDataDeleteEvent(MeetDataDeleteEvent event, emit) async {
    List<MeetEntity> _meets = [];
    await state
        .when(
            init: () {},
            loaded: (meets) async {
              _meets = await _meetDataDeleteLoaded(meets, event);
            },
            search: (meets, searchMeets) async {
              _meets = await _meetDataDeleteLoaded(meets,  event);
            },
            error: (e) {})
        ?.whenComplete(() {
      emit(MeetDataState.loaded(allMeetData: _meets));
    });
  }

  Future<List<MeetEntity>> _meetDataDeleteLoaded(List<MeetEntity> meets, MeetDataDeleteEvent event) async {
    final _meets = [...meets];

    try {
      await _meetRepository.deleteMeet(event.meetId).then(
        (value) {
          _meets.removeWhere(
              (element) => element.meetModel.meetId == event.meetId);
        },
      );
      return _meets; // _meets
    } catch (e) {
      print('error: $e');
    }
    return [];
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
            error: (e) {},
            search: (List<MeetEntity> meetEntities,
                List<MeetEntity> meetsSearched) async {
              int ind = meetEntities.indexWhere(
                  (element) => element.meetModel.meetId == event.meetId);
              final newMeet = await _meetRepository.fetchMeet(event.meetId);
              newMeetEntities.addAll(meetEntities);
              newMeetEntities[ind] =
                  newMeetEntities[ind].copyWith(meetModel: newMeet);
            })
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
              final newBasketItems =
                  await _meetRepository.fetchBasketItemsOfMeet(event.meetId);
              newMeetEntities.addAll(meetEntities);

              newMeetEntities[ind] =
                  newMeetEntities[ind].copyWith(allBasketData: newBasketItems);
            },
            error: (e) {},
            search: (List<MeetEntity> meetEntities,
                List<MeetEntity> meetsSearched) async {
              int ind = meetEntities.indexWhere(
                  (element) => element.meetModel.meetId == event.meetId);
              final newBasketItems =
                  await _meetRepository.fetchBasketItemsOfMeet(event.meetId);
              newMeetEntities.addAll(meetEntities);

              newMeetEntities[ind] =
                  newMeetEntities[ind].copyWith(allBasketData: newBasketItems);
            })
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
            error: (e) {},
            search: (List<MeetEntity> meetEntities,
                List<MeetEntity> meetsSearched) async {
              int ind = meetEntities.indexWhere(
                  (element) => element.meetModel.meetId == event.meetId);
              final newGuests = await _meetRepository.fetchGuests(event.meetId);
              newMeetEntities.addAll(meetEntities);
              newMeetEntities[ind] =
                  newMeetEntities[ind].copyWith(usersGuests: newGuests);
            })
        ?.whenComplete(
            () => emit(MeetDataState.loaded(allMeetData: newMeetEntities)));
  }

  @override
  Future<void> close() {
    print('meet bloc closed');
    return super.close();
  }
}
