import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rave_flock/common/localization.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/domain/entity/meet_entity/meet_entity.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_bloc.dart';
import 'package:rave_flock/presentation/bloc/meet_data_bloc/meet_data_event.dart';
import 'package:rave_flock/presentation/screens/error_screen/error_screen.dart';
import 'package:rave_flock/services/auth_service.dart';
import '../../bloc/meet_data_bloc/meet_data_state.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key, required this.meetId});

  final int meetId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      // TODO: обновляет каждый раз
      value: GetIt.I<MeetDataBloc>(),
      child: _BasketPage(
        meetId: meetId,
      ),
    );
  }
}

class _BasketPage extends StatelessWidget {
  const _BasketPage({super.key, required this.meetId});

  final int meetId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Basket')),
        body: RefreshIndicator(
          color: Colors.white,
          backgroundColor: const Color(0xFF5B1828),
          triggerMode: RefreshIndicatorTriggerMode.onEdge,
          onRefresh: () async {
            GetIt.I<MeetDataBloc>().add(MeetDataEvent.updateCurrMeetBasket(meetId));
          },
          child: Center(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                BlocBuilder<MeetDataBloc, MeetDataState>(builder: (_, state) {
                  return state.when(
                    init: () {
                      return Text(context.S.loading);
                    },
                    loaded: (meetEntities) {
                      final currMeet = meetEntities.firstWhere((element) => element.meetModel.meetId == meetId);
                      List<BasketItemModel>? currMeetBasketItems = currMeet.allBasketData;

                      return Column(
                        children: [
                          TotalSumOfUsingText(
                            meetEntity: currMeet,
                          ),
                          TotalSumOfGrabbedText(
                            meetEntity: currMeet,
                          ),
                          Expanded(
                            child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                              itemCount: currMeetBasketItems?.length,
                              itemBuilder: (_, index) {
                                return BasketItemGridView(basketItemModel: currMeetBasketItems![index]);
                              },
                            ),
                          ),
                        ],
                      );
                    },
                    error: (e) => ErrorScreen(error: e),
                  );
                }),

                Positioned(
                  bottom: 30,
                  child: MaterialButton(
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    onPressed: () {},
                    child: IconButton(
                        onPressed: () {
                          context.pushNamed('createNewBasketItem',
                              pathParameters: {'meetId': meetId.toString(), 'meetIdBasket': meetId.toString()});
                        },
                        icon: const Icon(Icons.add)),
                  ),
                ),
                // IconButton(onPressed: (){
                //   final basketMock = BasketItemModel(id: 51, meetId: 29, title: 'pivo', createdByUserId: 'ad6d73af-cc00-4ec8-95ce-dfc3eef7f601');
                //   GetIt.I<BasketDataBloc>().add(BasketDataEvent.delete(basketMock));
                // }, icon: const Icon(Icons.remove))
              ],
            ),
          ),
        ));
  }
}

class TotalSumOfUsingText extends StatelessWidget {
  const TotalSumOfUsingText({super.key, required this.meetEntity});

  final MeetEntity meetEntity;
  @override
  Widget build(BuildContext context) {
    // summary of uses
    double totalPrice = 0;

    for (var basketItem in meetEntity.allBasketData ?? []) {
      if (basketItem.cost != null &&
          basketItem.whoWillUseIds != null &&
          (basketItem.whoWillUseIds.contains(AuthService.getUserId()) ?? false)) {
        totalPrice += double.parse(basketItem.cost) / basketItem.whoWillUseIds.length;
      }
    }

    // ----

    return Text('${context.S.you_use}: ${totalPrice.toStringAsFixed(2)}', style: TextStyle(fontSize: 30));
  }
}

class TotalSumOfGrabbedText extends StatelessWidget {
  const TotalSumOfGrabbedText({super.key, required this.meetEntity});

  final MeetEntity meetEntity;
  @override
  Widget build(BuildContext context) {
    // summary of grabbed
    double totalPrice = 0;

    for (BasketItemModel basketItem in meetEntity.allBasketData ?? []) {
      if (basketItem.cost != null &&
          basketItem.grabbedByUserId != null &&
          (basketItem.grabbedByUserId == AuthService.getUserId())) {
        totalPrice += double.parse(basketItem.cost!);
      }
    }

    return Text('${context.S.you_grab}: ${totalPrice.toStringAsFixed(2)}', style: TextStyle(fontSize: 30));
  }
}

class BasketItemGridView extends StatelessWidget {
  const BasketItemGridView({super.key, required this.basketItemModel});
  final BasketItemModel basketItemModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed('singleBasketItemPage',
            pathParameters: {
              'meetId': basketItemModel.meetId.toString(),
              'meetIdBasket': basketItemModel.meetId.toString(),
              'basketItemId': basketItemModel.id.toString()
            },
            extra: basketItemModel);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2),
          borderRadius: BorderRadius.circular(30),
          color: Colors.green,
        ),
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Center(child: Text(basketItemModel.title)),
      ),
    );
  }
}
