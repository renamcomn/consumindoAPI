import 'package:consumindo_api/views/Home/Http/repository/user_repository.dart';
import 'package:get/get.dart';

class HttpController extends GetxController with StateMixin {

  final UserRepository _httpRepository;
  HttpController(this._httpRepository); 

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  void fetchUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.fetchAllUsers();
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Erro ao carregar usuários'));
    }
  }

}