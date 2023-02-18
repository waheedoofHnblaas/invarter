import 'package:get/get.dart';
import 'package:invarter/core/class/statusrequest.dart';
import 'package:invarter/core/function/handlingdata.dart';
import 'package:invarter/core/services/services.dart';
import 'package:invarter/data/datasource/remote/data-remote/getInverterCommands.dart';
import 'package:invarter/data/model/inverterCommandsModel.dart';

class InverterCommandsController extends GetxController {
  StatusRequest statusRequest = StatusRequest.loading;
  final InverterCommandsData inverterCommandsData =
      InverterCommandsData(Get.find());
  MyServices myServices = Get.find();
  late InverterCommandsModel inverterCommands;
  List<CommandModel> editAibleSettings = [];


  updates() {

    update();
  }

  @override
  void onInit() {
    getCommandsData();
    super.onInit();
  }

  Future getCommandsData() async {
    statusRequest = StatusRequest.loading;
    update();
    Map<String, dynamic> response =
        await inverterCommandsData.getInverterCommandsData(
      token: myServices.sharedPreferences.getString('token').toString(),
    );
    // print('===========getInfoData====response========');
    // print(response);
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['Success'] != null) {
        inverterCommands = InverterCommandsModel.fromJson(response);
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
    print('getCommandsData');
    update();
  }

  bool haveCommand({required command}) {
    bool h = false;
    for (CommandModel com in inverterCommands.commandList!) {
      // print(inverterCommands.commandList!.indexOf(com));
      if (com.commandShortcutInSettings == command) {
        if (!editAibleSettings.contains(com)) {
          editAibleSettings.add(com);
        }
        h = true;
      }
    }
    return h;
  }
  CommandModel? theCommand({required command}) {
    CommandModel h = CommandModel(id: 0);
    for (CommandModel com in inverterCommands.commandList!) {
      if (com.commandShortcutInSettings == command) {
        h = com;
      }
    }
    return h;
  }
}
