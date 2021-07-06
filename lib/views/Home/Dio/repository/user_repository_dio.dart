
import 'package:dio/dio.dart';
import 'package:consumindo_api/models/user_model.dart';

class UserRepositoryDio {

  late final Dio dio;

  UserRepositoryDio({
    required this.dio,
  });

  Future<List<UserModel>> fetchAllUsers() async {
    try {
      final response = await dio.get<List>('https://60e46b305bcbca001749e996.mockapi.io/users');
      return response.data!.map((e) => UserModel.fromMap(e)).toList();
    } catch (e) {
      print(e);
     rethrow;
    }
  }
  
}
