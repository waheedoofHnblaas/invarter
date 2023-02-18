import 'package:get/get.dart';
import 'package:invarter/core/class/statusrequest.dart';
import 'package:invarter/core/function/handlingdata.dart';
import 'package:invarter/core/services/services.dart';
import 'package:invarter/data/datasource/remote/data-remote/getDataInfo.dart';
import 'package:invarter/data/model/dataInfoModel.dart';

class InfoController extends GetxController {
  StatusRequest statusRequest = StatusRequest.loading;
  final InfoData infoData = InfoData(Get.find());
  MyServices myServices = Get.find();
  String username = '';

  late DataListModel dataInstance;
  List<Map<String, dynamic>> dataList = [];
  List<Map<String, dynamic>> faultsList = [];

  @override
  void onInit() {
    getInfoData();
    super.onInit();
  }

  Future getInfoData() async {
    statusRequest = StatusRequest.loading;
    update();
    Map<String, dynamic> response = await infoData.getInfoData(
      token: myServices.sharedPreferences.getString('token').toString(),
    );
    // print('===========getInfoData====response========');
    // print(response);
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['Success'] != null) {
        dataInstance = DataListModel.fromJson(response['data List'][0]);
        print('==========getInfoData====batteryChargingCurrent=======');

        dataInstance.data!.toJson().forEach((key, value) {

          dataList.add({key:value});
        });
        dataInstance.faults!.toJson().forEach((key, value) {
          faultsList.add({key:value});
        });
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
    // dataModel = DataModel.fromJson(AppStaticData.data);

    update();
  }
}
