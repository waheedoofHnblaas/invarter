import 'package:get/get.dart';
import 'package:invarter/route.dart';

abstract class RegisterController extends GetxController{
  register();
  toLogin();
}
class RegisterControllerImp extends RegisterController{
  @override
  register() {
    Get.offNamed(AppPages.login);
  }

  @override
  toLogin() {
    Get.offNamed(AppPages.login);
  }

}