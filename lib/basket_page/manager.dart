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
}
