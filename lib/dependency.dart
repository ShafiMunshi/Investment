import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:investment/controller/auth_controller.dart';

class MainBinding implements Bindings {

 @override
  Future<void> dependencies() async{
      Get.lazyPut<AuthController>(() => AuthController(), fenix: true);
  }
}