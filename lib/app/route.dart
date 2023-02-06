import 'package:flutter/material.dart';
import 'package:guga_screen/app/navigation/main_navigation.dart';
import '../map_page/map_page_ui.dart';



class JKXRoutes {
  static Route<Object?> onGenerateRoute(RouteSettings settings) {
    late final Widget page;

    switch (settings.name) {
      case AppRoutesKeys.mappage:
        page = const MapPage();
        break;
    }
    return MaterialPageRoute<Object>(
      builder: (_) => page,
      settings: settings,
    );
  }
}
