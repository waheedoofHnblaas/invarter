import 'package:get/get.dart';
import 'package:invarter/core/class/statusrequest.dart';
import 'package:invarter/core/function/handlingdata.dart';
import 'package:invarter/core/services/services.dart';
import 'package:invarter/data/datasource/remote/auth-remote/userDetails.dart';
import 'package:invarter/route.dart';

abstract class SystemController extends GetxController {
  Future getUserData();

  String getBool(int value);
}

class SystemControllerImp extends SystemController {
  // DataModel dataModel = DataModel();
  StatusRequest statusRequest = StatusRequest.loading;
  final UserDetails userDetails = UserDetails(Get.find());
  MyServices myServices = Get.find();
  String username = '';
  bool isAdmin = false;

  @override
  void onInit() async {
    print(myServices.sharedPreferences.get('username'));
    print(myServices.sharedPreferences.get('password'));
    username = myServices.sharedPreferences.get('username').toString();
    await getUserData();
    super.onInit();
  }

  @override
  Future getUserData() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await userDetails.userDetails(
      token: myServices.sharedPreferences.getString('token').toString(),
    );
    print('======================');
    print(response);
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['Success'] != null) {
        isAdmin = response['user detail']['admin'];
      } else {
        Get.showSnackbar(
          GetSnackBar(
            title: response['detail'],
          ),
        );
      }
    } else {
      Get.defaultDialog(
        title: 'Warning',
        middleText: 'something is wrong',
        backgroundColor: Get.theme.backgroundColor,
      );
      statusRequest = StatusRequest.failure;
    }
    // dataModel = DataModel.fromJson(AppStaticData.data);
    update();
  }

  @override
  String getBool(int value) {
    if (value == 1) {
      return 'ON';
    } else {
      return 'OFF';
    }
  }

  void logout() {
    myServices.sharedPreferences.clear();
    Get.offAllNamed(AppPages.login);
  }

  void toRegisterPage() {
    Get.toNamed(AppPages.register);
  }

  void toChangePasswordPage() {
    Get.toNamed(AppPages.changePassword);

  }

  void toChangePasswordNormalPage() {
    Get.toNamed(AppPages.changePasswordNormal);

  }

  void toInverterSettingsPage() {
    Get.toNamed(AppPages.inverterSettings);

  }
}
