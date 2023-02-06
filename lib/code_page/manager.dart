import 'package:riverpod/riverpod.dart';
import '../app/navigation/manager.dart';
import 'models/code_page_state.dart';

final codeManagerProvider = Provider(
  (ref) => CodeManager(
    codePageStateHolder: ref.watch(codePageStateProvider.notifier),
    navigationManager: ref.watch(navigationManagerProvider),
  ),
);

class CodeManager {
  final CodePageStateHolder codePageStateHolder;
  final NavigationManager navigationManager;

  CodeManager({
    required this.codePageStateHolder,
    required this.navigationManager,
  });

  void checkTextField(
      {required String s1,
      required String s2,
      required String s3,
      required String s4}) {
    String m = '';
    m = m + s1 + s2 + s3 + s4;
    if (m == '1234') {
      openMapPage();
    }
    // if (s1 == '1' && s2 == '2' && s3 == '3' && s4 == '4') {
    //   openMapPage();
    // }
    else {
      print('Error');
    }
  }

  void openMapPage() => navigationManager.openMapPage();
}
