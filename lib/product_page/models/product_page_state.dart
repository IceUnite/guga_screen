import 'package:riverpod/riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_page_state.freezed.dart';

@freezed
class ProductPageState with _$ProductPageState {
  const factory ProductPageState({
    required int price,
    required int count,
    required int totalPrice,
  }) = _ProductPageState;
}

final productPageStateProvider =
    StateNotifierProvider<ProductPageStateHolder, ProductPageState>(
  (ref) => ProductPageStateHolder(),
);

class ProductPageStateHolder extends StateNotifier<ProductPageState> {
  ProductPageStateHolder()
      : super(
          const ProductPageState(
            price: 0,
            count: 0,
            totalPrice: 0,
          ),
        );

  int get price => state.price;

  int get count => state.count;

  int get totalPrice => state.totalPrice;

  void setPrice(int value) => state = state.copyWith(
    price: value,
  );

  void setCount(int value) => state = state.copyWith(
    count: value,
  );
  void setTotalPrice(int value) => state = state.copyWith(
    totalPrice: value,
  );
}
