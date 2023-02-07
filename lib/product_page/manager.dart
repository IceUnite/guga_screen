import 'package:guga_screen/product_page/product_page_ui.dart';
import 'package:riverpod/riverpod.dart';
import '../app/navigation/manager.dart';
import 'models/product_page_state.dart';

final productManagerProvider = Provider(
  (ref) => ProductManager(
    productPageStateHolder: ref.watch(productPageStateProvider.notifier),
    navigationManager: ref.watch(navigationManagerProvider),
  ),
);

class ProductManager {
  final ProductPageStateHolder productPageStateHolder;
  final NavigationManager navigationManager;

  ProductManager({
    required this.productPageStateHolder,
    required this.navigationManager,
  });

  void totalPriceChange() {
    productPageStateHolder.setTotalPrice(
        productPageStateHolder.count * productPageStateHolder.price);
  }

  void changePrice(int value) {
    productPageStateHolder.setPrice(value);
    totalPriceChange();
  }

  void plus(int value) {
    value += 1;
    productPageStateHolder.setCount(value);
    totalPriceChange();
  }

  void minus(int value) {
    if (value > 0) {
      value -= 1;
      productPageStateHolder.setCount(value);
      totalPriceChange();
    }
  }
}
