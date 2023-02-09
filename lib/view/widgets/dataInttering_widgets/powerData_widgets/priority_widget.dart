import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invarter/controller/power_dataInterring_controllers/powerData_controller.dart';
import 'package:invarter/core/constant/colors.dart';
import 'package:invarter/view/widgets/battery_type_button.dart';

class PriorityWidget extends StatelessWidget {
  const PriorityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PowerDataControllerImp>(
      builder: (controller) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppBatteryTypeButton(
                text: 'AC',
                color: controller.priority == 'AC'
                    ? AppColors.cardColor.withOpacity(0.3)
                    : AppColors.background,
                onPressed: () {
                  controller.setPriority('AC');
                },
              ),
              AppBatteryTypeButton(
                text: 'Solar System',
                color: controller.priority == 'SO'
                    ? AppColors.cardColor.withOpacity(0.3)
                    : AppColors.background,
                onPressed: () {
                  controller.setPriority('SO');
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
