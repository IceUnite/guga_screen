import 'package:riverpod/riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'code_page_state.freezed.dart';
@freezed
class CodePageState with _$CodePageState {
  const factory CodePageState({

    required String s1,
    required String s2,
    required String s3,
    required String s4,

  }) = _CodePageState;
}

final codePageStateProvider =
StateNotifierProvider<CodePageStateHolder, CodePageState>(
      (ref) => CodePageStateHolder(),
);

class CodePageStateHolder extends StateNotifier<CodePageState> {
  CodePageStateHolder()
      : super(
    const CodePageState(
      s1: '',
      s2: '',
      s3: '',
      s4: '',
    ),
  );


  String get s1 => state.s1;
  String get s2 => state.s2;
  String get s3 => state.s3;
  String get s4 => state.s4;


  void setCode(String first, String second, String third, String four) => state = state.copyWith(
    s1: first,
    s2: second,
    s3: third,
    s4: four,
  );
}