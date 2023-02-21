import 'package:riverpod/riverpod.dart';
import '../app/navigation/manager.dart';
import 'models/favourite_page_state.dart';



final favouriteManagerProvider = Provider(
      (ref) => FavouriteManager(
    favouritePageStateHolder: ref.watch(favouritePageStateProvider.notifier),
    navigationManager: ref.watch(navigationManagerProvider),
  ),
);

class FavouriteManager {
  final FavouritePageStateHolder favouritePageStateHolder;
  final NavigationManager navigationManager;

  FavouriteManager({
    required this.favouritePageStateHolder,
    required this.navigationManager,
  });



  void openMapPage() => navigationManager.openProductPage();

  // List<bool> favouriteChangeState(List<bool> isNewFavourite, int index){
  //
  //   isNewFavourite[index] = !isNewFavourite[index];
  //   basketPageStateHolder.setSelectFavourite(isNewFavourite, index);
  //   return isNewFavourite;
  //
  // }
  //
  // List<bool> trashChangeState(List<bool> isNewTrash, int index){
  //   isNewTrash[index] = !isNewTrash[index];
  //   basketPageStateHolder.setSelectTrash(isNewTrash, index);
  //   return isNewTrash;
  // }
  void openProfilePage() => navigationManager.openProfilePage();

}
