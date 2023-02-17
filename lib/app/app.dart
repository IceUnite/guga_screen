import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:guga_screen/app/navigation/manager.dart';
import 'package:guga_screen/app/route.dart';
import 'navigation/main_navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final navigation = MainNavigation();

    return ProviderScope(
      child: MaterialApp(
        routes: navigation.routes,
        initialRoute: AppRoutesKeys.profilepage,
        onGenerateRoute: JKXRoutes.onGenerateRoute,
        navigatorKey: NavigationManager.hostNavigatorKey,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
