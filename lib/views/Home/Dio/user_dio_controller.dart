import 'package:consumindo_api/views/Home/Dio/repository/user_repository_dio.dart';
import 'package:get/get.dart';

class UserDioController extends GetxController with StateMixin { 

final UserRepositoryDio _userRepositoryDio;

  UserDioController(this._userRepositoryDio);


  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  void fetchUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _userRepositoryDio.fetchAllUsers();
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Erro ao carregar usuários'));
    }
  }

}