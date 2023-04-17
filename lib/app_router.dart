import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty/business_logic/cubit/cubit/characters_cubit.dart';
import 'package:rick_morty/data/repository/characters_repository.dart';
import 'package:rick_morty/data/web_services/character_web_service.dart';
import 'package:rick_morty/presentation/screen/character_screen.dart';
import 'package:rick_morty/presentation/screen/home_screen.dart';

class ScreenPages {
  static const String home = "/";
  static const String charcater_screen = "/details";
}

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;
  AppRouter() {
    charactersRepository = CharactersRepository(CharacterWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ScreenPages.home:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => charactersCubit,
            child: HomeScreen(),
          ),
        );
      case ScreenPages.charcater_screen:
        return MaterialPageRoute(builder: (_) => CharacterScreen());
    }
  }
}
