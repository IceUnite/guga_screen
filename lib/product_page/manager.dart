import 'package:guga_screen/product_page/product_page_ui.dart';
import 'package:riverpod/riverpod.dart';
import '../app/navigation/manager.dart';
import 'models/product_page_state.dart';

final productManagerProvider = Provider(
      (ref) =>
      AuthorizationManager(
        productPageStateHolder: ref.watch(productPageStateProvider.notifier),
        navigationManager: ref.watch(navigationManagerProvider),
      ),
);

class AuthorizationManager {
  final ProductPageStateHolder productPageStateHolder;
  final NavigationManager navigationManager;

  AuthorizationManager({
    required this.productPageStateHolder,
    required this.navigationManager,

  });



  void plus(int value) {
    value += 1;
  }

  void minus(int value) {
    if (value != 0) {
      value -= 1;
    }
  }
  void changePrice(price){

  }



}