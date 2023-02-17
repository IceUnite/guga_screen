import 'package:riverpod/riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_page_state.freezed.dart';

@freezed
class BasketPageState with _$BasketPageState {
  const factory BasketPageState({
    required List<bool> isFavourite,
    required List<bool> isTrash,
    required int selectedIndex,
  }) = _BasketPageState;
}

final basketPageStateProvider =
    StateNotifierProvider<BasketPageStateHolder, BasketPageState>(
  (ref) => BasketPageStateHolder(),
);

class BasketPageStateHolder extends StateNotifier<BasketPageState> {
  BasketPageStateHolder()
      : super(
          BasketPageState(
            isFavourite: List.filled(10000, false),
            isTrash: List.filled(10000, false),
            selectedIndex: 0,
          ),
        );

  List<bool> get isFavourite => state.isFavourite;

  void setSelectFavourite(List<bool> isFavourite, int selectedIndex) =>
      state = state.copyWith(
        isFavourite: isFavourite,
        selectedIndex: selectedIndex,
      );
  void setSelectTrash(List<bool> isTrash, int selectedIndex) =>
      state = state.copyWith(
        isTrash: isTrash,
        selectedIndex: selectedIndex,
      );
}
