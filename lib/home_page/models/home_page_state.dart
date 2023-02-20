import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod/riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_page_state.freezed.dart';


@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    // required String phoneNumber,
    required int catalogIndex,
  }) = _HomePageState;


}

final homePageStateProvider =
StateNotifierProvider<HomePageStateHolder, HomePageState>(
      (ref) => HomePageStateHolder(),
);

class HomePageStateHolder extends StateNotifier<HomePageState> {
  HomePageStateHolder()
      : super(
    const HomePageState(
      catalogIndex: 0,
    ),
  );
  int get catalogIndex => state.catalogIndex;

  void setCatalogIndex(int value) => state = state.copyWith(
    catalogIndex: value,
  );
  //
  // void setUserAdress(String adress) => state = state.copyWith(
  //   userAdress: adress,
  // );


}