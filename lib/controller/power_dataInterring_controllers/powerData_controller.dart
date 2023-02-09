import 'package:get/get.dart';
import 'package:invarter/route.dart';

abstract class PowerDataController extends GetxController {
  commitData();

  setBatteryType(String type);
  setPriority(String priority);
}

class PowerDataControllerImp extends PowerDataController {
  String batteryType = '';
  String priority = '';



  @override
  commitData() {
    Get.offNamed(AppPages.inverterData);
  }

  @override
  setBatteryType(String type) {
    if(batteryType != type){
      batteryType = type;
    }else{
      batteryType ='';
    }
    update();
  }

  @override
  setPriority(String p) {
    if(priority != p){
      priority = p;
    }else{
      priority ='';
    }
    update();
  }
}
