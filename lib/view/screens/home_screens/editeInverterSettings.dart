import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invarter/controller/home_controller/inverterCommands_controller.dart';
import 'package:invarter/controller/home_controller/inverterSettingsInfo_controller.dart';
import 'package:invarter/data/model/inverterCommandsModel.dart';
import 'package:invarter/view/widgets/appsliverappbar.dart';

class EditeInverterSettingsPage extends StatefulWidget {
  const EditeInverterSettingsPage({Key? key}) : super(key: key);

  @override
  State<EditeInverterSettingsPage> createState() =>
      _EditeInverterSettingsPageState();
}

class _EditeInverterSettingsPageState extends State<EditeInverterSettingsPage> {
  @override
  Widget build(BuildContext context) {
    InverterCommandsController commandsController = Get.find();
    InverterSettingsController settingsController = Get.find();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppSliverAppBar(
            title: 'Edit Able Settings',
            action: Text(
              commandsController.editAibleSettings.length.toString(),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: commandsController.editAibleSettings.length,
                  (context, index) {
            CommandModel member = commandsController.editAibleSettings[index];
            return GetBuilder<InverterCommandsController>(builder: (cont) {
              return Column(
                children: [
                  ListTile(
                    title: Text(
                      member.commandShortcut.toString(),
                      style: Get.textTheme.bodyText1,
                    ),
                    subtitle: Text(
                      member.commandShortcutInSettings!,
                      style: const TextStyle(fontSize: 11),
                    ),
                    leading: member.boundries!.max != null
                        ? Column(children: [
                            Text(
                              member.boundries!.max.toString(),
                              style: const TextStyle(
                                  color: Colors.green, fontSize: 11),
                            ),
                            Text(
                              member.boundries!.min.toString(),
                              style: const TextStyle(
                                  color: Colors.red, fontSize: 11),
                            ),
                          ])
                        : Text(''),
                  ),
                  // member.boundries!.max != null
                  //     ? CupertinoSlider(
                  //         max: double.parse(member.boundries!.max.toString()),
                  //         min: double.parse(member.boundries!.min.toString()),
                  //         value:  commandsController.inverterCommands.commandList[0].,
                  //         onChanged: (c) {
                  //           print(commandsController.sliderValue);
                  //           commandsController.setValue(c);
                  //         },
                  //       )
                  //     : const Text('')
                ],
              );
            });
          })),
        ],
      ),
    );
  }
}
