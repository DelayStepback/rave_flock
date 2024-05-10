import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rave_flock/common/localization.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_event.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_state.dart';
import 'package:rave_flock/services/auth_service.dart';

class SingleBasketItemPage extends StatelessWidget {
  const SingleBasketItemPage({super.key, required this.basketItemId, required this.meetId});

  final int basketItemId;
  final int meetId;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: GetIt.I<MeetDataBloc>(),
        builder: (_, MeetDataState state) {
          return state.maybeWhen(
            loaded: (meetEntities) {
              final basketItemModel = meetEntities
                  .firstWhere((element) => element.meetModel.meetId == meetId)
                  .allBasketData
                  ?.firstWhere((element) => element.id == basketItemId);
              if (basketItemModel == null) {
                return const SizedBox.shrink();
              }
              return BasketItemBody(
                basketItemModel: basketItemModel,
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        });
  }
}

enum BasketItemTakeState { notTakenAnyOne, takenByAnotherUser, takenByCurrUser }

class BasketItemBody extends StatelessWidget {
  const BasketItemBody({super.key, required this.basketItemModel});
  final BasketItemModel basketItemModel;
  @override
  Widget build(BuildContext context) {
    late final BasketItemTakeState basketItemTakeState;
    if (basketItemModel.grabbedByUserId == null) {
      basketItemTakeState = BasketItemTakeState.notTakenAnyOne;
    } else if (basketItemModel.grabbedByUserId == AuthService.getUserId()) {
      basketItemTakeState = BasketItemTakeState.takenByCurrUser;
    } else {
      basketItemTakeState = BasketItemTakeState.takenByAnotherUser;
    }

    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(basketItemModel.title),
          Text(basketItemModel.cost ?? context.S.no_price),
          Text('${context.S.created_by} ${basketItemModel.createdByUserId}'),
          Text('${context.S.grabbed_by} ${basketItemModel.grabbedByUserId ?? context.S.not_grabbed}'),
          Text('${context.S.who_will_use_it} ${basketItemModel.whoWillUseIds ?? context.S.not_used}'),
          const SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor:
                    basketItemTakeState == BasketItemTakeState.takenByAnotherUser ? Colors.grey : Colors.green),
            onPressed: basketItemTakeState == BasketItemTakeState.takenByAnotherUser
                ? null
                : () {
                    if (basketItemTakeState == BasketItemTakeState.notTakenAnyOne) {
                      GetIt.I<MeetDataBloc>().add(
                          MeetDataEvent.userTakeThisBasketItem(true, basketItemModel, AuthService.getUserId() ?? ''));
                    } else {
                      GetIt.I<MeetDataBloc>().add(
                          MeetDataEvent.userTakeThisBasketItem(false, basketItemModel, AuthService.getUserId() ?? ''));
                    }
                  },
            child: Text(basketItemTakeState.name),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: basketItemModel.whoWillUseIds?.contains(AuthService.getUserId()) ?? false
                    ? Colors.green
                    : Colors.red),
            onPressed: () {
              if (basketItemModel.whoWillUseIds?.contains(AuthService.getUserId()) ?? false) {
                GetIt.I<MeetDataBloc>()
                    .add(MeetDataEvent.userUseThisBasketItem(false, basketItemModel, AuthService.getUserId() ?? ''));
              } else {
                GetIt.I<MeetDataBloc>()
                    .add(MeetDataEvent.userUseThisBasketItem(true, basketItemModel, AuthService.getUserId() ?? ''));
              }
            },
            child: Text('${context.S.use} ${basketItemModel.whoWillUseIds?.contains(AuthService.getUserId())}'),
          )
        ],
      )),
    );
  }
}
