import 'package:flutter/material.dart';
import 'package:guga_screen/basket_page/basket_page_ui.dart';
import 'package:guga_screen/home_page/home_page_ui.dart';
import 'package:guga_screen/map_page/map_page_ui.dart';
import 'package:guga_screen/product_section_page/product_section_page_ui.dart';
import 'package:guga_screen/register_page/register_page_ui.dart';
import '../../code_page/code_page_ui.dart';
import '../../product_page/product_page_ui.dart';
import '../../profile_page/profile_page_ui.dart';


abstract class AppRoutesKeys {
  static const codepage = 'code_page';
  static const registerpage = 'register_page';
  static const mappage = 'map_page';
  static const productpage = 'product_page';
  static const basketpage = 'basket_page';
  static const profilepage = 'profile_page';
  static const homepage = 'home_page';
  static const productsectionpage = 'product_section_page';

}

class MainNavigation {
  final initialRoute = AppRoutesKeys.registerpage;
  final routes = <String, Widget Function(BuildContext)>{
    AppRoutesKeys.codepage: (context) => const CodePage(),
    AppRoutesKeys.registerpage: (context) => const RegisterPage(),
    AppRoutesKeys.mappage: (context) => const MapPage(),
    AppRoutesKeys.productpage: (context) => const ProductPage(),
    AppRoutesKeys.basketpage: (context) => const BasketPage(),
    AppRoutesKeys.profilepage: (context) => const ProfilePage(),
    AppRoutesKeys.homepage: (context) => const HomePage(),
    AppRoutesKeys.productsectionpage: (context) => const ProductSectionPage(),
  };
}
