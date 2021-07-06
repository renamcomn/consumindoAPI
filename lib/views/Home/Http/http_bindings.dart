import 'package:consumindo_api/views/Home/Http/http_controller.dart';
import 'package:consumindo_api/views/Home/Http/repository/user_repository.dart';
import 'package:get/get.dart';

class HttpBindings implements Bindings {

  void dependencies() {
    Get.put<UserRepository>(UserRepository());
    Get.put(HttpController(Get.find()));
  }
}