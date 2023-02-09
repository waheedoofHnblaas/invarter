import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invarter/controller/home_controller/system_controller.dart';
import 'package:invarter/core/class/statusrequest.dart';
import 'package:invarter/core/constant/colors.dart';
import 'package:invarter/view/widgets/apploginbutton.dart';
import 'package:invarter/view/widgets/home_widgets/appcard_data.dart';

class SystemDataPage extends StatelessWidget {
  const SystemDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SystemControllerImp());
    return Scaffold(
      drawer: GetBuilder<SystemControllerImp>(builder: (controller) {
        return Drawer(
          width: Get.width / 1.3,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        controller.username,
                        style: Get.textTheme.bodyText1,
                      ),
                      controller.isAdmin == true
                          ? Text(
                              '  is Admin',
                              style: Get.textTheme.bodyText2,
                            )
                          : Text(
                              '  is Normal User',
                              style: Get.textTheme.bodyText2,
                            ),
                    ],
                  ),
                ),
                AppSignUpAndLoginButton(
                  text: 'logout',
                  onPressed: () {
                    controller.logout();
                  },
                )
              ],
            ),
          ),
        );
      }),
      appBar: AppBar(
        primary: true,
        backgroundColor: AppColors.background,
        title: const Text(
          'SYSTEM DATA',
        ),
      ),
      backgroundColor: AppColors.background,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<SystemControllerImp>(builder: (controller) {
          if (controller.statusRequest == StatusRequest.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 0,
                  color: AppColors.connectCardColor,
                  child: Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Center(
                      child: Text(
                        'Connected to Inverter :    83148374783',
                        style: Get.textTheme.bodyText1,
                      ),
                    ),
                  ),
                ),
                //battery data
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Battery DATA',
                    style: TextStyle(fontSize: 21),
                  ),
                ),
                AppCardData(
                    title:
                        'battery Capacity : ${controller.dataModel.batteryCapacity!} %'),
                AppCardData(
                    title:
                        'battery Voltage : ${controller.dataModel.batteryVoltage!} Volt'),
                AppCardData(
                    title:
                        'battery Discharge Current : ${controller.getBool(controller.dataModel.batteryDischargeCurrent!)}'),
                AppCardData(
                    title:
                        'battery Charging Current : ${controller.getBool(controller.dataModel.batteryChargingCurrent!)}'),

                //Ac data
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'AC DATA',
                    style: TextStyle(fontSize: 21),
                  ),
                ),
                AppCardData(
                    title:
                        'AC Charging : ${controller.getBool(controller.dataModel.isAcChargingOn!)}'),

                AppCardData(
                    title:
                        'AC Input Voltage : ${controller.dataModel.acInputVoltage!} Volt'),
                AppCardData(
                    title:
                        'AC Output Voltage : ${controller.dataModel.acOutputVoltage!} Volt'),
                AppCardData(
                    title:
                        'AC Output Active Power : ${controller.dataModel.acOutputActivePower!} Volt'),
              ],
            );
          }
        }),
      ),
    );
  }
}
