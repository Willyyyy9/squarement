import 'package:dio/dio.dart';
import 'package:squarement/app/resources/string_manager.dart';

class HomeNetwork {
  Dio dio = Dio();

  Future<List<dynamic>> getImages() async {
    try {
      var response = await dio.get(
        '${AppLinks.baseUrl}/photos',
      );
      return response.data;
    } on DioException catch (e) {
      throw DioException(
          message: e.message,
          response: e.response,
          requestOptions: e.requestOptions);
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  Future<List<dynamic>> getUsers() async {
    try {
      var response = await dio.get(
        '${AppLinks.baseUrl}/users',
      );
      return response.data;
    } on DioException catch (e) {
      throw DioException(
          message: e.message,
          response: e.response,
          requestOptions: e.requestOptions);
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }
}
