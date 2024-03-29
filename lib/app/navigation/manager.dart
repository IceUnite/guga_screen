import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guga_screen/app/navigation/main_navigation.dart';
import 'package:riverpod/riverpod.dart';



final navigationManagerProvider = Provider((ref) => NavigationManager());

class NavigationManager {
  static final hostNavigatorKey = GlobalKey<NavigatorState>();

  NavigatorState? get state => hostNavigatorKey.currentState;

  BuildContext? get context => state?.context;

  void openCodePage() => state?.pushNamed(AppRoutesKeys.codepage);
  void openMapPage() => state?.pushNamed(AppRoutesKeys.mappage);
  void openProductPage() => state?.pushNamed(AppRoutesKeys.productpage);
  void openBasketPage() => state?.pushNamed(AppRoutesKeys.basketpage);
  void openProfilePage() => state?.pushNamed(AppRoutesKeys.profilepage);
  void openHomePage() => state?.pushNamed(AppRoutesKeys.homepage);
  void openProductSectionPage() => state?.pushNamed(AppRoutesKeys.productsectionpage);
  void openFavoritepage() => state?.pushNamed(AppRoutesKeys.favouritepage);
  void openMainPage() => state?.pushNamed(AppRoutesKeys.mainpage);
}
