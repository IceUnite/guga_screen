import 'package:riverpod/riverpod.dart';
import '../app/navigation/manager.dart';
import 'models/profile_page_state.dart';
import 'models/profile_page_state.dart';

final profileManagerProvider = Provider(
      (ref) =>
      ProfileManager(
        profilePageStateHolder: ref.watch(profilePageStateProvider.notifier),
        navigationManager: ref.watch(navigationManagerProvider),
      ),
);

class ProfileManager {
  final ProfilePageStateHolder profilePageStateHolder;
  final NavigationManager navigationManager;

  ProfileManager({
    required this.profilePageStateHolder,
    required this.navigationManager,

  });

  void changeUserAdress({required String Adress}) {
    if (Adress == '') {
      print('Ввдите новый адрес!');
    }
    else {
    profilePageStateHolder.setUserAdress(Adress);
    }
  }
  void changeUserPhone({required String Phone}) {
    if (Phone == '') {
      print('Ввдите новый Телефон!');
    }
    else {
      profilePageStateHolder.setPhoneNumber(Phone);
    }
  }


  //void changeValueBtn(bool value) => profilePageStateHolder.setValueBtn(value);


}