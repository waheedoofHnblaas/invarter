import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invarter/controller/auth_controller/register_controller.dart';
import 'package:invarter/core/constant/colors.dart';
import 'package:invarter/view/widgets/apploginbutton.dart';
import 'package:invarter/view/widgets/apploginsignup.dart';
import 'package:invarter/view/widgets/appsliverappbar.dart';
import 'package:invarter/view/widgets/apptextfield.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterControllerImp());
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: GetBuilder<RegisterControllerImp>(builder: (controller) {
          return CustomScrollView(
            slivers: [
              const AppSliverAppBar(title: 'Register'),
              SliverList(
                delegate: SliverChildListDelegate(
                  addAutomaticKeepAlives: true,
                  semanticIndexOffset: 100,
                  [
                    const SizedBox(
                      height: 150,
                    ),
                    AppTextField(
                      type: 'name',
                      iconData: Icons.person,
                      inputType: TextInputType.name,
                      onChanged: (val) {},
                      validator: (val) {},
                      textFieldController: TextEditingController(),
                    ),
                    AppTextField(
                      type: 'phone',
                      iconData: Icons.phone,
                      inputType: TextInputType.phone,
                      onChanged: (val) {},
                      validator: (val) {},
                      textFieldController: TextEditingController(),
                    ),
                    AppTextField(
                      type: 'password',
                      iconData: Icons.password,
                      inputType: TextInputType.visiblePassword,
                      onChanged: (val) {},
                      validator: (val) {},
                      obscureText: true,
                      textFieldController: TextEditingController(),
                    ),
                    AppSignUpAndLoginButton(
                      text: 'sing up',
                      onPressed: () {
                        controller.toLogin();
                      },
                    ),
                    AppLoginSignUp(
                      textone: 'you have account ?',
                      texttwo: 'login',
                      onPressed: () {
                        controller.toLogin();
                      },
                    )
                  ],
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
