import 'package:guga_screen/product_section_page/models/product_section_page_state.dart';
import 'package:riverpod/riverpod.dart';
import '../app/navigation/manager.dart';



final productSectionManagerProvider = Provider(
      (ref) => ProductSectionManager(
    productSectionPageStateHolder: ref.watch(productSectionPageStateProvider.notifier),
    navigationManager: ref.watch(navigationManagerProvider),
  ),
);

class ProductSectionManager {
  final ProductSectionPageStateHolder productSectionPageStateHolder;
  final NavigationManager navigationManager;

  ProductSectionManager({
    required this.productSectionPageStateHolder,
    required this.navigationManager,
  });
  List<bool> favouriteChangeState(List<bool> isNewFavourite, int index){

    isNewFavourite[index] = !isNewFavourite[index];
    productSectionPageStateHolder.setSelectFavourite(isNewFavourite, index);
    return isNewFavourite;

  }
  List<bool> basketChangeState(List<bool> isNewBasket, int index){

    isNewBasket[index] = !isNewBasket[index];
    productSectionPageStateHolder.setSelectBasket(isNewBasket, index);
    return isNewBasket;

  }

}