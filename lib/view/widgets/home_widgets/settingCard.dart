import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invarter/controller/home_controller/inverterSettingsInfo_controller.dart';
import 'package:invarter/data/model/inverterSettingsModel.dart';
import '../../../controller/home_controller/inverterCommands_controller.dart';
import '../../../core/constant/colors.dart';
import '../../../data/model/inverterCommandsModel.dart';

SettingCard(
  Map<String, dynamic> settingList,
  CommandModel? cm,
  int index,
  bool editAble,
) {
  return GetBuilder<InverterSettingsController>(builder: (control) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          settingList.keys.toList()[index],
          style: Get.textTheme.bodyText1,
        ),
        Row(
          children: [
            editAble
                ? IconButton(
                    onPressed: () {
                      Get.defaultDialog(
                        title: settingList.keys.toList()[index],
                        content: cm!.boundries!.min != null
                            ? GetBuilder<InverterCommandsController>(
                                builder: (cont) {
                                double min =
                                    double.parse(cm.boundries!.min.toString());
                                double max =
                                    double.parse(cm.boundries!.max.toString());
                                int div = ((max - min) ~/
                                    double.parse(cm.increamental!));
                                print('=======================');
                                print(settingList[
                                    settingList.keys.toList()[index]]);
                                print(((max - min) /
                                    double.parse(cm.increamental!)));
                                return Column(
                                  children: [
                                    Text(settingList[
                                            settingList.keys.toList()[index]]
                                        .toString()),
                                    Slider.adaptive(
                                      label: settingList[
                                              settingList.keys.toList()[index]]
                                          .toString(),
                                      value: double.parse(settingList[
                                              settingList.keys.toList()[index]]
                                          .toString()),
                                      min: min,
                                      max: max,
                                      divisions: div,
                                      onChanged: (c) {
                                        settingList[settingList.keys
                                            .toList()[index]] = c;

                                        cont.update();
                                        control.update();
                                      },
                                    ),
                                  ],
                                );
                              })
                            : const Text(''),
                      );
                    },
                    icon: const Icon(Icons.edit),
                  )
                : Container(),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.cardColor.withOpacity(0.4),
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              width: Get.width / 3.4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  settingList[settingList.keys.toList()[index]].toString(),
                  style: Get.textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  });
}
