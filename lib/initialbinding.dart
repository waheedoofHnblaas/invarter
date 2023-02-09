import 'package:get/get.dart';
import 'package:invarter/core/class/crud.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    // Get.put(ThemeController(),permanent: true);
    Get.put(GetMaterialController(), permanent: true);
  }
}
