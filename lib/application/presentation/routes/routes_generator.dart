import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/screens/api_test_page.dart/api_test.dart';
import 'package:jerseyhub_admin/application/presentation/screens/bottom_bar/bottom_bar_screen.dart';
import 'package:jerseyhub_admin/application/presentation/screens/edit_inventory/edit_inventory_screen.dart';

import '../screens/sign_in/sign_in_screen.dart';
import '../screens/splash_screen/splash_screen.dart';
import 'routes.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    //final arguments=settings.arguments;
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (ctx) => const ScreenSplash());
      case Routes.signInPage:
        return MaterialPageRoute(builder: (ctx) => const ScreenSignIn());
      case Routes.bottomBar:
        return MaterialPageRoute(builder: (ctx) => const ScreenBottombar());
      case Routes.editScreen:
        return MaterialPageRoute(builder: (ctx) => const ScreenEditInventory());
      case Routes.testScreen:
        return MaterialPageRoute(builder: (ctx) => ApiTestScreen());
      default:
        return _errorScreen();
    }
  }

  static Route<dynamic> _errorScreen() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Error while navigating')),
      );
    });
  }
}
