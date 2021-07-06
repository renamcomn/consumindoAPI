import 'package:consumindo_api/models/user_model.dart';

abstract class IUserRepository {
  Future<List<UserModel>> fetchAllUsers();
}