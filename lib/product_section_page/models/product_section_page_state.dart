import 'package:riverpod/riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_section_page_state.freezed.dart';

@freezed
class ProductSectionPageState with _$ProductSectionPageState {
  const factory ProductSectionPageState({
    required List<bool> isFavourite,
    required List<bool> isBasket,
    // required List<List<bool>> isFavourite,
    // required List<List<bool>> isBasket,
    required int selectedIndex,
  }) = _ProductSectionPageState;
}

final productSectionPageStateProvider =
StateNotifierProvider<ProductSectionPageStateHolder, ProductSectionPageState>(
      (ref) => ProductSectionPageStateHolder(),
);

class ProductSectionPageStateHolder extends StateNotifier<ProductSectionPageState> {
  ProductSectionPageStateHolder()
      : super(
    ProductSectionPageState(
      isFavourite: List.filled(10000, false),
      isBasket: List.filled(10000, false),
      selectedIndex: 0,
    ),
  );

  List<bool> get isFavourite => state.isFavourite;
  List<bool> get isBasket => state.isBasket;

  void setSelectFavourite(List<bool> isFavourite, int selectedIndex) =>
      state = state.copyWith(
        isFavourite: isFavourite,
        selectedIndex: selectedIndex,
      );
  void setSelectBasket(List<bool> isBasket, int selectedIndex) =>
      state = state.copyWith(
        isBasket: isBasket,
        selectedIndex: selectedIndex,
      );
}
