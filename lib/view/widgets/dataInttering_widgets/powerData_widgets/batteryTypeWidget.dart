import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invarter/controller/power_dataInterring_controllers/powerData_controller.dart';
import 'package:invarter/core/constant/colors.dart';
import 'package:invarter/view/widgets/battery_type_button.dart';

class BatteryTypeWidget extends StatelessWidget {
  const BatteryTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PowerDataControllerImp>(
      builder: (controller) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppBatteryTypeButton(
                  text: 'gel',
                  color: controller.batteryType == 'g'
                      ? AppColors.cardColor.withOpacity(0.3)
                      : AppColors.background,
                  onPressed: () {
                    controller.setBatteryType('g');
                  }),
              AppBatteryTypeButton(
                  text: 'aced',
                  color: controller.batteryType == 'a'
                      ? AppColors.cardColor.withOpacity(0.3)
                      : AppColors.background,
                  onPressed: () {
                    controller.setBatteryType('a');
                  }),
              // AppBatteryTypeButton(
              //     text: 'lithesome',
              //     color: controller.batteryType == 'l'
              //         ? AppColors.cardColor.withOpacity(0.3)
              //         : AppColors.background,
              //     onPressed: () {
              //       controller.setBatteryType('l');
              //     }),
            ],
          ),
        );
      },
    );
  }
}
