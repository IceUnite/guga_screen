import 'package:riverpod/riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_page_state.freezed.dart';


@freezed
class AuthPageState with _$AuthPageState {
  const factory AuthPageState({
    required String userName,
    required String phoneNumber,
  }) = _AuthPageState;
}

final authPageStateProvider =
StateNotifierProvider<AuthPageStateHolder, AuthPageState>(
      (ref) => AuthPageStateHolder(),
);

class AuthPageStateHolder extends StateNotifier<AuthPageState> {
  AuthPageStateHolder()
      : super(
    const AuthPageState(
      userName: '',
      phoneNumber: '',
    ),
  );


  String get phoneNumber => state.phoneNumber;
  String get userName => state.userName;


  void setPhoneNumber(String phone, String name) => state = state.copyWith(
    phoneNumber: phone,
    userName: name,
  );
}