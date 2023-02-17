import 'package:riverpod/riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_page_state.freezed.dart';


@freezed
class ProfilePageState with _$ProfilePageState {
  const factory ProfilePageState({
    required String phoneNumber,
    required String userAdress,
  }) = _ProfilePageState;


}

final profilePageStateProvider =
StateNotifierProvider<ProfilePageStateHolder, ProfilePageState>(
      (ref) => ProfilePageStateHolder(),
);

class ProfilePageStateHolder extends StateNotifier<ProfilePageState> {
  ProfilePageStateHolder()
      : super(
      const ProfilePageState(
      phoneNumber: '+7 4991133630',
      userAdress: 'ул.Гоголя, 2 проезд. Дом 85',
    ),
  );
  String get phoneNumber => state.phoneNumber;
  String get userAdress => state.userAdress;



  void setPhoneNumber(String phone) => state = state.copyWith(
    phoneNumber: phone,
  );

  void setUserAdress(String adress) => state = state.copyWith(
    userAdress: adress,
  );


}