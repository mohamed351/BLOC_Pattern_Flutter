import 'package:rick_morty/data/models/character.dart';
import 'package:rick_morty/data/web_services/character_web_service.dart';

class CharactersRepository {
  final CharacterWebServices characterWebServices;

  CharactersRepository(this.characterWebServices);
  Future<List<Character>> getAllCharacters() async {
    final characters = await characterWebServices.getAllCharacters();
    return characters.map((e) => Character.fromJson(e)).toList();
  }
}
