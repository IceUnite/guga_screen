import 'package:riverpod/riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_page_state.freezed.dart';

@freezed
class isActive{
  bool favorite;
  bool trash;
  isActive(this.favorite, this.trash);
}
List <isActive> activeState = <isActive>[

];

class BasketPageState with _$BasketPageState {
  const factory BasketPageState({
    required int price,
    required int count,
    required int totalPrice,
  }) = _BasketPageState;
}

final basketPageStateProvider =
StateNotifierProvider<BasketPageStateHolder, BasketPageState>(
      (ref) => BasketPageStateHolder(),
);

class BasketPageStateHolder extends StateNotifier<BasketPageState> {
  BasketPageStateHolder()
      : super(
    const BasketPageState(
      price: 0,
      count: 0,
      totalPrice: 0,
    ),
  );




}