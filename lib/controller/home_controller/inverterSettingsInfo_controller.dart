import 'package:get/get.dart';
import 'package:invarter/core/class/statusrequest.dart';
import 'package:invarter/core/function/handlingdata.dart';
import 'package:invarter/core/services/services.dart';
import 'package:invarter/data/datasource/remote/data-remote/getInverterSettings.dart';
import 'package:invarter/data/model/inverterSettingsModel.dart';
import 'package:invarter/route.dart';

class InverterSettingsController extends GetxController {
  StatusRequest statusRequest = StatusRequest.loading;
  final InverterSettingsData inverterSettingsData =
      InverterSettingsData(Get.find());
  MyServices myServices = Get.find();
  late InverterSettingsModel inverterSettings;

  @override
  void onInit() {
    getSettingsInfoData();
    super.onInit();
  }

  Future getSettingsInfoData() async {
    statusRequest = StatusRequest.loading;
    update();
    Map<String, dynamic> response =
        await inverterSettingsData.getInverterSettingsData(
      token: myServices.sharedPreferences.getString('token').toString(),
    );
    // print('===========getInfoData====response========');
    // print(response);
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['Success'] != null) {
        inverterSettings =
            InverterSettingsModel.fromJson(response['Inverter Settings']);
      } else {
        Get.showSnackbar(
          const GetSnackBar(
            title: 'auth error',
          ),
        );
      }
    } else {
      Get.defaultDialog(
        title: 'Warning',
        middleText: 'server error',
        backgroundColor: Get.theme.backgroundColor,
      );
      statusRequest = StatusRequest.failure;
    }
    update();
  }

  void toEditInverterSettingsPage() {

    Get.toNamed(AppPages.editeInverterSettingsPage);
  }
}
