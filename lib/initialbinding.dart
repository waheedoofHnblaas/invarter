import 'package:get/get.dart';
import 'package:invarter/controller/home_controller/info_system_controller.dart';
import 'package:invarter/controller/home_controller/inverterCommands_controller.dart';
import 'package:invarter/controller/home_controller/inverterSettingsInfo_controller.dart';
import 'package:invarter/controller/home_controller/user_system_controller.dart';
import 'package:invarter/core/class/crud.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.put(GetMaterialController(), permanent: true);
    // data controllers
    Get.put(SystemControllerImp());
    Get.put(InfoController());
    Get.put(InverterSettingsController());

    Get.put(InverterCommandsController());

  }
}
