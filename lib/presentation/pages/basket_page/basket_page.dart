import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/presentation/bloc/basket_data_bloc/basket_data_bloc.dart';

import '../../bloc/basket_data_bloc/basket_data_event.dart';
import '../../bloc/basket_data_bloc/basket_data_state.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key, required this.meetId});

  final int meetId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      // TODO: обновляет каждый раз
      value: GetIt.I<BasketDataBloc>()
        ..add(BasketDataDisposeEvent())
        ..add(BasketDataInitializeEvent(meetId)),
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
            BlocBuilder<BasketDataBloc, BasketDataState>(builder: (_, state) {
              return state.when(
                  init: () {
                    return Text('loading');
                  },
                  loaded: (basketItems) {
                    return Expanded(
                      child: ListView.builder(
                          itemCount: basketItems.length,
                          itemBuilder: (_, index) {
                            return Text('#${basketItems[index].id} ${basketItems[index].title}');
                          }),
                    );
                  },
                  error: (e) => Text('error: $e'));
            }),
            IconButton(onPressed: (){
              final basketMock = BasketItemModel(meetId: 29, title: 'pivo', createdByUserId: 'ad6d73af-cc00-4ec8-95ce-dfc3eef7f601');
              GetIt.I<BasketDataBloc>().add(BasketDataEvent.add(basketMock));
            }, icon: Icon(Icons.add)),
            IconButton(onPressed: (){
              final basketMock = BasketItemModel(id: 51, meetId: 29, title: 'pivo', createdByUserId: 'ad6d73af-cc00-4ec8-95ce-dfc3eef7f601');
              GetIt.I<BasketDataBloc>().add(BasketDataEvent.delete(basketMock));
            }, icon: Icon(Icons.remove))
          ],
        ),
      )
    );
  }
}
