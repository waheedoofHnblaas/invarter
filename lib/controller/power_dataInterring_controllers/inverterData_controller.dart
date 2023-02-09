import 'package:get/get.dart';
import 'package:invarter/route.dart';

abstract class InvertDataController extends GetxController{
  connectData();
}
class InvertDataControllerImp extends InvertDataController{
  @override
  connectData() {
    Get.offNamed(AppPages.systemData);
  }



}