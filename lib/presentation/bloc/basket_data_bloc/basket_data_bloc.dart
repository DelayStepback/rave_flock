import 'package:bloc/bloc.dart';
import 'package:rave_flock/data/models/basket_item/basket_item_model.dart';
import 'package:rave_flock/domain/repositories/meet_repository.dart';

import 'basket_data_event.dart';
import 'basket_data_state.dart';

class BasketDataBloc extends Bloc<BasketDataEvent, BasketDataState> {
  final MeetRepository _meetRepository;

  BasketDataBloc(this._meetRepository) : super(const BasketDataState.init()) {
    on<BasketDataInitializeEvent>(_onBasketDataInitializeEvent);
    on<BasketDataAddEvent>(_onBasketDataAddEvent);
    on<BasketDataDisposeEvent>(_onBasketDataDisposeEvent);
    on<BasketDataDeleteEvent>(_onBasketDataDeleteEvent);
  }

  Future<void> _onBasketDataDisposeEvent(event, emit) async {
    emit(const BasketDataState.init());
    print('Basket disposed $state');
  }

  Future<void> _onBasketDataInitializeEvent(
      BasketDataInitializeEvent event, emit) async {
    await Future.delayed(Duration(seconds: 4));

    await _meetRepository.fetchBasketItemsOfMeet(event.meetId).then((value) =>
        emit(BasketDataState.loaded(allBasketData: value))
    );
  }

  Future<void> _onBasketDataAddEvent(BasketDataAddEvent event, emit) async {
    List<BasketItemModel> _basketItems = [];

    await state
        .when(
            init: () {},
            loaded: (basketItems) async {
              for (var bI in basketItems) {
                _basketItems.add(bI);
              }

              try {
                await _meetRepository.addToBasketItem(event.basketItemModel).then((item) {
                  _basketItems.add(item);
                });
              } catch (e) {
                print('error: $e');
              }
            },
            error: (e) {})
        ?.whenComplete(() {
      emit(BasketDataState.loaded(allBasketData: _basketItems));
    });
  }

  Future<void> _onBasketDataDeleteEvent(BasketDataDeleteEvent event, emit) async{
    List<BasketItemModel> _basketItems = [];

    await state
        .when(
        init: () {},
        loaded: (basketItems) async {

          try {
            await _meetRepository.removeBasketItem(event.basketItemModel).whenComplete(() {
              for (var bI in basketItems) {
                _basketItems.add(bI);
              }
              _basketItems.remove(event.basketItemModel);
            });
          } catch (e) {
            print('error: $e');
          }
        },
        error: (e) {})
        ?.whenComplete(() {
      emit(BasketDataState.loaded(allBasketData: _basketItems));
    });
  }

  @override
  Future<void> close() {
    print('basket data bloc closed');
    return super.close();
  }
}
