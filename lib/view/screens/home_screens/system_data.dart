import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invarter/controller/home_controller/info_system_controller.dart';
import 'package:invarter/controller/home_controller/inverterSettingsInfo_controller.dart';
import 'package:invarter/controller/home_controller/user_system_controller.dart';
import 'package:invarter/core/class/handelingview.dart';
import 'package:invarter/core/constant/colors.dart';
import 'package:invarter/view/widgets/home_widgets/data_widget.dart';
import 'package:invarter/view/widgets/home_widgets/error_widget.dart';

import '../../widgets/home_widgets/drawer_widget.dart';

class SystemDataPage extends StatelessWidget {
  const SystemDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: GetBuilder<SystemControllerImp>(
        builder: (controller) {
          return Drawer(
            width: Get.width / 1.3,
            child: DrawerWidget(controller: controller),
          );
        },
      ),
      appBar: AppBar(
        primary: true,
        backgroundColor: AppColors.background,
        title: const Text(
          'SYSTEM DATA',
        ),
        actions: [
          GetBuilder<InfoController>(
            builder: (controller) {
              return IconButton(
                  onPressed: () {
                    controller.getInfoData();
                  },
                  icon: const Icon(Icons.refresh_sharp));
            },
          )
        ],
      ),
      backgroundColor: AppColors.background,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: GetBuilder<SystemControllerImp>(
          builder: (sysController) {
            return HandelingView(
              statusRequest: sysController.statusRequest,
              widget: GetBuilder<InfoController>(builder: (infoController) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                        color: AppColors.connectCardColor,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Connected to Inverter :    83148374783',
                              style: Get.textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ),
                      //battery data
                      Text(
                        'DATA',
                        style: Get.textTheme.bodyText2,
                      ),
                      dataWidget(infoController),
                      Text(
                        'Faults',
                        style: Get.textTheme.bodyText2,
                      ),
                      errorsWidget(infoController)
                    ],
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
