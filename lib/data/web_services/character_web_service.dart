import 'package:dio/dio.dart';
import 'package:rick_morty/constants/app_settings.dart';

class CharacterWebServices {
  late Dio dio;
  CharacterWebServices() {
    BaseOptions options = BaseOptions(
        baseUrl: AppSettings.baseUrl, receiveDataWhenStatusError: true);
    dio = Dio(options);
  }
  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get("character");
      return response.data["results"];
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
