
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invarter/controller/home_controller/info_system_controller.dart';
import 'package:invarter/core/constant/colors.dart';
Widget dataWidget(InfoController controller) {
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: controller.dataList.length,
    itemBuilder: (context, index) {
      Map<String, dynamic> list = controller.dataList[index];
      return Container(
        decoration: BoxDecoration(
            color: AppColors.cardColor,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(vertical: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.width / 1.5,
              child: Text(
                list.keys.toList()[0],
                style: Get.textTheme.bodyText1,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              width: Get.width / 6,
              child: Text(
                list[list.keys.toList()[0]].toString(),
                style: Get.textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
    },
  );
}
