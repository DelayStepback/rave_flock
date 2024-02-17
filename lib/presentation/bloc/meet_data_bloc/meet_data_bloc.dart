import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/data/models/meet/meet_model.dart';
import 'package:rave_flock/domain/entity/guest_entity/guest_entity.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';
import 'package:rave_flock/domain/repositories/meet_repository.dart';
import 'package:rave_flock/presentation/widget/notification_toast.dart';
import 'package:rave_flock/services/auth_service.dart';
import 'meet_data_event.dart';
import 'meet_data_state.dart';

class MeetDataBloc extends Bloc<MeetDataEvent, MeetDataState> {
  final MeetRepository _meetRepository;

  MeetDataBloc(this._meetRepository) : super(const MeetDataState.init()) {
    on<MeetDataInitializeEvent>(_onMeetDataInitializeEvent);
    on<MeetDataAddEvent>(_onMeetDataAddEvent);
    on<MeetDataDeleteEvent>(_onMeetDataDeleteEvent);
    on<MeetDataDisposeEvent>(_onMeetDataDisposeEvent);

    on<MeetDataUpdateCurrMeetInfo>(_onMeetDataUpdateCurrMeetInfo);
    on<MeetDataUpdateCurrMeetBasket>(_onMeetDataUpdateCurrMeetBasket);
    on<MeetDataUpdateCurrMeetGuests>(_onMeetDataUpdateCurrMeetGuests);
    on<MeetDataSearchEvent>(_onMeetDataSearchEvent);
    on<MeetDataSendInviteEvent>(_onMeetDataSendInviteEvent);

    on<MeetDataUserTakeThisItem>(_onMeetDataUserTakeThisItem);
    on<MeetDataUserUseThisItem>(_onMeetDataUserUseThisItem);
  }

  Future<void> _onMeetDataSendInviteEvent(MeetDataSendInviteEvent event, emit) async {
    try {
      await _meetRepository.inviteToMeet(event.userId, event.meetId);
      showOverlayNotification(
        (context) {
          return const NotificationToast(
            message: 'Invite sended',
            needShowSmile: true,
            emoji: '👍',
          );
        },
        duration: const Duration(seconds: 3),
      );
    } catch (e) {
      showOverlayNotification(
        (context) {
          return const NotificationToast(
            message: 'It seems like you are already sending invite...',
            needShowSmile: true,
            emoji: '🤷‍♂️',
          );
        },
        duration: const Duration(seconds: 2),
      );
    }
  }

  Future<void> _onMeetDataSearchEvent(MeetDataSearchEvent event, emit) async {
    emit(const MeetDataState.init());
    List<MeetEntity> _meetsEntities = [];
    if (event.titleLike == '') {
      add(MeetDataInitializeEvent(AuthService.getUserId()!));
      return;
    }
    await state
        .when(
            init: () async {
              final meetsData = await _meetRepository.fetchUserSearchMeets(event.titleLike, event.userId);

              for (MeetModel meet in meetsData) {
                List<GuestEntity>? guests;
                List<BasketItemModel>? basketItems;

                if (meet.meetId != null) {
                  guests = await _meetRepository.fetchGuests(meet.meetId!);
                  if (meet.containsBasket) {
                    basketItems = await _meetRepository.fetchBasketItemsOfMeet(meet.meetId!);
                  }
                }
                _meetsEntities.add(MeetEntity(meetModel: meet, usersGuests: guests, allBasketData: basketItems));
              }
            },
            loaded: (meets) async {},
            error: (error) {})
        ?.whenComplete(() {
      if (_meetsEntities.isNotEmpty) {
        emit(MeetDataState.loaded(allMeetData: _meetsEntities));
      }
    });
  }

  Future<void> _onMeetDataDisposeEvent(event, emit) async {
    emit(const MeetDataState.init());
    debugPrint('Meet disposed $state');
  }

  Future<void> _onMeetDataInitializeEvent(MeetDataInitializeEvent event, emit) async {
    emit(const MeetDataState.init());
    try {
      List<MeetEntity> _meetsEntities = [];

      final meetsData = await _meetRepository.fetchUserMeets(event.userId);
      for (MeetModel meet in meetsData) {
        List<GuestEntity>? guests;
        List<BasketItemModel>? basketItems;

        if (meet.meetId != null) {
          guests = await _meetRepository.fetchGuests(meet.meetId!);
          if (meet.containsBasket) {
            basketItems = await _meetRepository.fetchBasketItemsOfMeet(meet.meetId!);
          }
        }
        _meetsEntities.add(MeetEntity(meetModel: meet, usersGuests: guests, allBasketData: basketItems));
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
    )
        ?.whenComplete(
      () {
        emit(MeetDataState.loaded(allMeetData: _meets));
      },
    );
  }

  Future<List<MeetEntity>> _meetDataAddLoaded(List<MeetEntity> meets, MeetDataAddEvent event) async {
    final _meets = [...meets];
    print(_meets);
    // такого мероприятия нет
    if (event.meetModel.meetId == null) {
      try {
        await _meetRepository.addMeet(event.meetModel).then(
          (value) async {
            List<GuestEntity> newGuests = await _meetRepository.fetchGuests(value.meetId!);
            print(newGuests);
            _meets.add(MeetEntity(meetModel: value, usersGuests: newGuests, allBasketData: []));
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
          int index = _meets.indexWhere((e) => e.meetModel.meetId == event.meetModel.meetId);
          _meets[index].meetModel = event.meetModel;
        });
      } catch (e) {
        print('error: $e');
      }
      return _meets;
    }
  }

  Future<void> _onMeetDataDeleteEvent(MeetDataDeleteEvent event, emit) async {
    await state
        .when(
            init: () {},
            loaded: (meets) async {
              await _meetDataDeleteLoaded(meets, event);
            },
            error: (e) {})
        ?.whenComplete(() {
      add(MeetDataInitializeEvent(AuthService.getUserId()!));
    });
  }

  Future<List<MeetEntity>> _meetDataDeleteLoaded(List<MeetEntity> meets, MeetDataDeleteEvent event) async {
    final _meets = [...meets];
    try {
      await _meetRepository.deleteMeet(event.meetId).then(
        (value) {
          _meets.removeWhere((element) => element.meetModel.meetId == event.meetId);
        },
      );
      return _meets; // _meets
    } catch (e) {
      print('error: $e');
    }
    return [];
  }

  Future<void> _onMeetDataUpdateCurrMeetInfo(MeetDataUpdateCurrMeetInfo event, emit) async {
    List<MeetEntity> newMeetEntities = [];
    await state
        .when(
          init: () {},
          loaded: (meetEntities) async {
            int ind = meetEntities.indexWhere((element) => element.meetModel.meetId == event.meetId);
            final newMeet = await _meetRepository.fetchMeet(event.meetId);
            newMeetEntities.addAll(meetEntities);
            newMeetEntities[ind] = newMeetEntities[ind].copyWith(meetModel: newMeet);
          },
          error: (e) {},
        )
        ?.whenComplete(() => emit(MeetDataState.loaded(allMeetData: newMeetEntities)));
  }

  Future<void> _onMeetDataUpdateCurrMeetBasket(MeetDataUpdateCurrMeetBasket event, emit) async {
    List<MeetEntity> newMeetEntities = [];
    await state
        .when(
          init: () {},
          loaded: (meetEntities) async {
            int ind = meetEntities.indexWhere((element) => element.meetModel.meetId == event.meetId);
            final newBasketItems = await _meetRepository.fetchBasketItemsOfMeet(event.meetId);
            newMeetEntities.addAll(meetEntities);

            newMeetEntities[ind] = newMeetEntities[ind].copyWith(allBasketData: newBasketItems);
          },
          error: (e) {},
        )
        ?.whenComplete(() => emit(MeetDataState.loaded(allMeetData: newMeetEntities)));
  }

  Future<void> _onMeetDataUpdateCurrMeetGuests(MeetDataUpdateCurrMeetGuests event, emit) async {
    List<MeetEntity> newMeetEntities = [];
    await state
        .when(
          init: () {},
          loaded: (meetEntities) async {
            int ind = meetEntities.indexWhere((element) => element.meetModel.meetId == event.meetId);
            final newGuests = await _meetRepository.fetchGuests(event.meetId);
            newMeetEntities.addAll(meetEntities);
            newMeetEntities[ind] = newMeetEntities[ind].copyWith(usersGuests: newGuests);
          },
          error: (e) {},
        )
        ?.whenComplete(() => emit(MeetDataState.loaded(allMeetData: newMeetEntities)));
  }

  Future<void> _onMeetDataUserTakeThisItem(MeetDataUserTakeThisItem event, emit) async {
    useOrTakeThisItem(
      isTake: event.isTake,
      itemId: event.itemId,
      meetId: event.meetId,
      repositoryAction: (isTake, itemId, userId) => _meetRepository.userTakeThisItem(isTake, itemId, userId),
    );
  }

  Future<void> _onMeetDataUserUseThisItem(MeetDataUserUseThisItem event, emit) async {
    useOrTakeThisItem(
      isTake: event.isUse,
      itemId: event.itemId,
      meetId: event.meetId,
      repositoryAction: (isTake, itemId, userId) => _meetRepository.userUseThisItem(isTake, itemId, userId),
    );
  }

  void useOrTakeThisItem(
      {required bool isTake,
      required int itemId,
      required int meetId,
      required Function(bool, int, String) repositoryAction}) async {
    List<MeetEntity> newMeetEntities = [];
    await state
        .when(
            init: () {},
            loaded: (meetEntities) async {
              int ind = meetEntities.indexWhere((element) => element.meetModel.meetId == meetId);
              try {
                await repositoryAction(isTake, itemId, AuthService.getUserId() ?? '');
                newMeetEntities = [
                  ...meetEntities.sublist(0, ind),
                  meetEntities[ind].copyWith(allBasketData: await _meetRepository.fetchBasketItemsOfMeet(meetId)),
                  ...meetEntities.sublist(ind + 1)
                ];
              } catch (e) {
                emit(MeetDataState.error(error: e.toString()));
              }
            },
            error: (error) async {})
        ?.whenComplete(
      () {
        if (newMeetEntities.isNotEmpty) {
          emit(
            MeetDataState.loaded(allMeetData: newMeetEntities),
          );
        }
      },
    );
  }

  @override
  Future<void> close() {
    debugPrint('meet bloc closed');
    return super.close();
  }
}
