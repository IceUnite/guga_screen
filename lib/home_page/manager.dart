import 'package:riverpod/riverpod.dart';
import '../app/navigation/manager.dart';
import 'models/home_page_state.dart';

final homeManagerProvider = Provider(
      (ref) =>
      HomeManager(
        homePageStateHolder: ref.watch(homePageStateProvider.notifier),
        navigationManager: ref.watch(navigationManagerProvider),
      ),
);

class HomeManager {
  final HomePageStateHolder homePageStateHolder;
  final NavigationManager navigationManager;

  HomeManager({
    required this.homePageStateHolder,
    required this.navigationManager,

  });

  void openProfilePage() => navigationManager.openProfilePage();
  void openProductSectionPage() => navigationManager.openProductSectionPage();
  void changeCurrentIndex(int value){
    homePageStateHolder.setCatalogIndex(value);
    // print(homePageStateHolder.catalogIndex);
  }


}