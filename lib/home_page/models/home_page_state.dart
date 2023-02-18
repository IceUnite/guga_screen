import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod/riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_page_state.freezed.dart';


@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    // required String phoneNumber,
    required String userAdress,
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
      // phoneNumber: '+7 4991133630',
       userAdress: 'ул.Гоголя, 2 проезд. Дом 85',
    ),
  );


  // void setPhoneNumber(String phone) => state = state.copyWith(
  //   phoneNumber: phone,
  // );
  //
  // void setUserAdress(String adress) => state = state.copyWith(
  //   userAdress: adress,
  // );


}