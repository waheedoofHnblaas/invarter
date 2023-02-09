import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invarter/controller/power_dataInterring_controllers/inverterData_controller.dart';
import 'package:invarter/core/constant/colors.dart';
import 'package:invarter/view/widgets/apploginbutton.dart';
import 'package:invarter/view/widgets/appsliverappbar.dart';
import 'package:invarter/view/widgets/apptextfield.dart';

class InverterDataPage extends StatelessWidget {
  const InverterDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InvertDataControllerImp invertDataController =
        Get.put(InvertDataControllerImp());
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          const AppSliverAppBar(title: 'INVERTER SYSTEM DATA'),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 150,
              ),
              AppTextField(
                type: 'inverter number',
                iconData: Icons.numbers_sharp,
                inputType: TextInputType.number,
                onChanged: (val) {},
                validator: (val) {},
                textFieldController: TextEditingController(),
              ),
              const Divider(endIndent: 22, indent: 22),
              AppSignUpAndLoginButton(
                text: 'connect',
                onPressed: () {
                  invertDataController.connectData();
                },
              ),
            ]),
          )
        ],
      ),
    );
  }
}
