import 'package:riverpod/riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_page_state.freezed.dart';

@freezed
class FavouritePageState with _$FavouritePageState {
  const factory FavouritePageState({
    required List<bool> isFavourite,
    required List<bool> isTrash,
    required int selectedIndex,
  }) = _FavouritePageState;
}

final favouritePageStateProvider =
StateNotifierProvider<FavouritePageStateHolder, FavouritePageState>(
      (ref) => FavouritePageStateHolder(),
);

class FavouritePageStateHolder extends StateNotifier<FavouritePageState> {
  FavouritePageStateHolder()
      : super(
    FavouritePageState(
      isFavourite: List.filled(10000, false),
      isTrash: List.filled(10000, false),
      selectedIndex: 0,
    ),
  );


}