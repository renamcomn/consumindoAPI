import 'package:consumindo_api/views/Home/Dio/repository/user_repository_dio.dart';
import 'package:consumindo_api/views/Home/Dio/user_dio_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class UserDioBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(Dio());
    Get.put(UserRepositoryDio(dio: Get.find()));
    Get.put(UserDioController(Get.find()));
  }
}