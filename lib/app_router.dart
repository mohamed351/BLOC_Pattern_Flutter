import "package:flutter/material.dart";
import 'package:rick_morty/presentation/screen/character_screen.dart';
import 'package:rick_morty/presentation/screen/home_screen.dart';

class ScreenPages {
  static const String home = "/";
  static const String charcater_screen = "/details";
}

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ScreenPages.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case ScreenPages.charcater_screen:
        return MaterialPageRoute(builder: (_) => CharacterScreen());
    }
  }
}
