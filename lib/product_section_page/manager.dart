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
  List<List<bool>> favouriteChangeState(List<List<bool>> isNewFavourite, int pageIndex, int widgetIndex){

    isNewFavourite[pageIndex][widgetIndex] = !isNewFavourite[pageIndex][widgetIndex];
    //debugPrint
    // print('id страницы $pageIndex');
    // print('id виджета $widgetIndex');
    // print('Значение ${isNewFavourite[pageIndex][widgetIndex]}');
    productSectionPageStateHolder.setSelectFavourite(isNewFavourite, pageIndex);
    return isNewFavourite;

  }
  List<List<bool>> basketChangeState(List<List<bool>> isNewBasket, int pageIndex, int widgetIndex){

    isNewBasket[pageIndex][widgetIndex] = !isNewBasket[pageIndex][widgetIndex];
    productSectionPageStateHolder.setSelectBasket(isNewBasket, pageIndex);
    return isNewBasket;

  }

}