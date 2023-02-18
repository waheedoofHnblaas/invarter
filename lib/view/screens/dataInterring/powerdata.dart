import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invarter/controller/power_dataInterring_controllers/powerData_controller.dart';
import 'package:invarter/core/constant/colors.dart';
import 'package:invarter/view/widgets/apploginbutton.dart';
import 'package:invarter/view/widgets/apploginsubtitle.dart';
import 'package:invarter/view/widgets/appsliverappbar.dart';
import 'package:invarter/view/widgets/apptextfield.dart';
import 'package:invarter/view/widgets/battery_type_button.dart';
import 'package:invarter/view/widgets/dataInttering_widgets/powerData_widgets/batteryTypeWidget.dart';
import 'package:invarter/view/widgets/dataInttering_widgets/powerData_widgets/priority_widget.dart';

class PowerDataPage extends StatelessWidget {
  const PowerDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PowerDataControllerImp powerDataController =
        Get.put(PowerDataControllerImp());
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
           AppSliverAppBar(title: 'POWER SYSTEM DATA'),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 150,
              ),
              AppTextField(
                type: 'panels count',
                iconData: Icons.numbers_sharp,
                inputType: TextInputType.number,
                onChanged: (val) {},
                validator: (val) {},
                textFieldController: TextEditingController(),
              ),
              AppTextField(
                type: 'panel watt',
                iconData: Icons.electric_bolt_outlined,
                inputType: TextInputType.number,
                onChanged: (val) {},
                validator: (val) {},
                textFieldController: TextEditingController(),
              ),
              AppTextField(
                type: 'batters count',
                iconData: Icons.numbers_sharp,
                inputType: TextInputType.number,
                onChanged: (val) {},
                validator: (val) {},
                textFieldController: TextEditingController(),
              ),
              AppTextField(
                type: 'battery amber',
                iconData: Icons.electric_bolt_outlined,
                inputType: TextInputType.number,
                onChanged: (val) {},
                validator: (val) {},
                textFieldController: TextEditingController(),
              ),
              const Divider(endIndent: 22, indent: 22),
              const AppLoginSubTitle(subtitle: 'Battery type :'),
              const BatteryTypeWidget(),
              const Divider(endIndent: 22, indent: 22),
              const AppLoginSubTitle(subtitle: 'Priority for :'),
              const PriorityWidget(),
              const Divider(endIndent: 22, indent: 22),
              AppSignUpAndLoginButton(
                text: 'commit',
                onPressed: () {
                  powerDataController.commitData();
                },
              ),
            ]),
          )
        ],
      ),
    );
  }
}
