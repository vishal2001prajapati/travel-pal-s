import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:travelpals/user_profile/ProfileDetailController.dart';



class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileDetailController>(() => ProfileDetailController());
  }
}
