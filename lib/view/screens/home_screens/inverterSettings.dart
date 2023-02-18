import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invarter/controller/home_controller/inverterCommands_controller.dart';
import 'package:invarter/controller/home_controller/inverterSettingsInfo_controller.dart';
import 'package:invarter/core/constant/colors.dart';
import 'package:invarter/view/widgets/appsliverappbar.dart';

import '../../../data/model/inverterCommandsModel.dart';
import '../../widgets/home_widgets/settingCard.dart';

class InverterSettingsPage extends StatelessWidget {
  const InverterSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InverterSettingsController settingsController = Get.find();
    InverterCommandsController commandsController = Get.find();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            AppSliverAppBar(
              title: 'Inverter Settings Info',
              action: IconButton(
                onPressed: () {
                  settingsController.toEditInverterSettingsPage();
                },
                icon: const Icon(Icons.edit),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                addAutomaticKeepAlives: true,
                semanticIndexOffset: 100,
                childCount: settingsController.inverterSettings
                    .toJson()
                    .length,
                    (context, index) {
                      Map<String, dynamic> settingList =
                  settingsController.inverterSettings.toJson();
                  List? commandList =
                      commandsController.inverterCommands.commandList;
                  //================== lists ================//
                  bool editAble = commandsController.haveCommand(
                      command: settingList.keys.toList()[index]);

                  CommandModel? cm = commandsController.theCommand(
                      command: settingList.keys.toList()[index]);

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: SettingCard(settingList,cm,index,editAble),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

