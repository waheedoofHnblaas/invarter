import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invarter/controller/auth_controller/deleteUser_controller.dart';
import 'package:invarter/controller/home_controller/user_system_controller.dart';
import 'package:invarter/view/widgets/apploginbutton.dart';

import '../../../core/class/statusrequest.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({required this.controller});

  SystemControllerImp controller;

  @override
  Widget build(BuildContext context) {
    DeleteUserController deleteUserController = Get.put(DeleteUserController());
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  controller.username,
                  style: Get.textTheme.bodyText1,
                ),
                controller.isAdmin == true
                    ? Text(
                        '  is Admin',
                        style: Get.textTheme.bodyText2,
                      )
                    : Text(
                        '  is Normal User',
                        style: Get.textTheme.bodyText2,
                      ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                onPressed: () {
                  controller.toInverterSettingsPage();
                },
                icon: const Icon(Icons.settings, size: 40),
              ),
            ),

            SizedBox(
              width: Get.width / 1.4,
              child: Text(
                'User Authentication',
                textAlign: TextAlign.start,
                style: TextStyle(color: Get.theme.primaryColor),
              ),
            ),
            controller.isAdmin
                ? Column(
                    children: [
                      AppSignUpAndLoginButton(
                        text: 'Register new user',
                        onPressed: () {
                          controller.toRegisterPage();
                        },
                      ),
                      AppSignUpAndLoginButton(
                        text: 'Change Password',
                        onPressed: () {
                          controller.toChangePasswordPage();
                        },
                      ),
                      AppSignUpAndLoginButton(
                        text: 'Change Password of Normal User',
                        onPressed: () {
                          controller.toChangePasswordNormalPage();
                        },
                      ),
                      GetBuilder<DeleteUserController>(
                          builder: (deleteController) {
                        if (deleteController.statusRequest ==
                            StatusRequest.success) {
                          return AppSignUpAndLoginButton(
                            text: 'Delete Normal User',
                            onPressed: () async {
                              await deleteUserController.deleteUser();
                            },
                          );
                        } else {
                          return const CircularProgressIndicator();
                        }
                      }),
                      AppSignUpAndLoginButton(
                        text: 'logout',
                        onPressed: () {
                          controller.logout();
                        },
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
