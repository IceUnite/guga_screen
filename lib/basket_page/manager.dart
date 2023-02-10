import 'package:guga_screen/basket_page/models/basket_page_state.dart';
import 'package:riverpod/riverpod.dart';
import '../app/navigation/manager.dart';



final basketManagerProvider = Provider(
      (ref) => BasketManager(
        basketPageStateHolder: ref.watch(basketPageStateProvider.notifier),
    navigationManager: ref.watch(navigationManagerProvider),
  ),
);

class BasketManager {
  final BasketPageStateHolder basketPageStateHolder;
  final NavigationManager navigationManager;

  BasketManager({
    required this.basketPageStateHolder,
    required this.navigationManager,
  });



  void openMapPage() => navigationManager.openProductPage();

  List<bool> favouriteChangeState(List<bool> isNewFavourite, int index){

    isNewFavourite[index] = !isNewFavourite[index];
    basketPageStateHolder.setSelectFavourite(isNewFavourite, index);
    return isNewFavourite;

  }

  List<bool> trashChangeState(List<bool> isNewTrash, int index){
    isNewTrash[index] = !isNewTrash[index];
    basketPageStateHolder.setSelectTrash(isNewTrash, index);
    return isNewTrash;
  }

}
