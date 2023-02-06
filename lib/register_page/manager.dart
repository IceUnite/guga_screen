import 'package:riverpod/riverpod.dart';
import '../app/navigation/manager.dart';
import 'models/register_page_state.dart';

final authManagerProvider = Provider(
      (ref) =>
      AuthorizationManager(
        authPageStateHolder: ref.watch(authPageStateProvider.notifier),
        navigationManager: ref.watch(navigationManagerProvider),
      ),
);

class AuthorizationManager {
  final AuthPageStateHolder authPageStateHolder;
  final NavigationManager navigationManager;

  AuthorizationManager({
    required this.authPageStateHolder,
    required this.navigationManager,

  });

  void checkTextField({required String name, required String phone}) {
    if (name == '' && phone == '') {
      print('Пустые поля');
    }
    else {
      openCodePage();
    }
  }

  void openCodePage() => navigationManager.openCodePage();


}