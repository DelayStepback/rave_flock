import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
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
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<MeetDataBloc, MeetDataState>(builder: (_, state) {
            return state.when(
              init: () {
                return const Text('loading');
              },
              loaded: (meetEntities) {
                List<BasketItemModel>? currMeetBasketItems =
                    meetEntities.firstWhere((element) => element.meetModel.meetId == meetId).allBasketData;
                print(currMeetBasketItems);
                return Expanded(
                  child: ListView.builder(
                      itemCount: currMeetBasketItems?.length,
                      itemBuilder: (_, index) {
                        return UnconstrainedBox(
                          child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30), color: Colors.deepPurpleAccent),
                              child: Column(children: [
                                Text('#${currMeetBasketItems?[index].id} ${currMeetBasketItems?[index].title}'),



                                if (currMeetBasketItems?[index].grabbedByUserId != null) ...[
                                  if (currMeetBasketItems?[index].grabbedByUserId == AuthService.getUserId()) ...[
                                    ElevatedButton(
                                        onPressed: () {
                                          BlocProvider.of<MeetDataBloc>(context).add(MeetDataEvent.takeThisItem(
                                              meetId, currMeetBasketItems![index].id!, false));
                                        },
                                        child: Text('Do not take'))
                                  ] else ...[
                                    Text('Taken by ${currMeetBasketItems?[index].grabbedByUserId}')
                                  ]
                                ] else ...[
                                  ElevatedButton(
                                      onPressed: () {
                                        BlocProvider.of<MeetDataBloc>(context).add(
                                            MeetDataEvent.takeThisItem(meetId, currMeetBasketItems![index].id!, true));
                                      },
                                      child: Text('Take'))
                                ],
                              ])),
                        );
                      }),
                );
              },
              error: (e) => ErrorScreen(error: e),
            );
          }),
          IconButton(
              onPressed: () {
                GetIt.I<MeetDataBloc>().add(MeetDataEvent.updateCurrMeetBasket(meetId));
              },
              icon: const Icon(Icons.refresh)),
          // IconButton(onPressed: (){
          //   final basketMock = BasketItemModel(meetId: 29, title: 'pivo', createdByUserId: 'ad6d73af-cc00-4ec8-95ce-dfc3eef7f601');
          //   GetIt.I<BasketDataBloc>().add(BasketDataEvent.add(basketMock));
          // }, icon: const Icon(Icons.add)),
          // IconButton(onPressed: (){
          //   final basketMock = BasketItemModel(id: 51, meetId: 29, title: 'pivo', createdByUserId: 'ad6d73af-cc00-4ec8-95ce-dfc3eef7f601');
          //   GetIt.I<BasketDataBloc>().add(BasketDataEvent.delete(basketMock));
          // }, icon: const Icon(Icons.remove))
        ],
      ),
    ));
  }
}

