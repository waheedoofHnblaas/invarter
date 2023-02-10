import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:invarter/core/middelware.dart';
import 'package:invarter/view/screens/auth_screens/changePassword.dart';
import 'package:invarter/view/screens/auth_screens/change_password_normal.dart';
import 'package:invarter/view/screens/auth_screens/login.dart';
import 'package:invarter/view/screens/auth_screens/registerNewUser.dart';
import 'package:invarter/view/screens/dataInterring/inverterData.dart';
import 'package:invarter/view/screens/home_screens/system_data.dart';

import 'view/screens/dataInterring/powerdata.dart';

class AppPages {
  static const register = '/register';
  static const login = '/';
  static const systemData = '/systemData';
  static const changePassword = '/changePassword';
  static const changePasswordNormal = '/changePasswordNormal';

  static const powerData = '/powerData';
  static const inverterData = '/inverterData';
  static List<GetPage<dynamic>>? routes = [
    GetPage(
      name: AppPages.login,
      page: () => LoginPage(),
      // middlewares: [
      //   MiddleWare()
      // ]
    ),
    GetPage(
      name: AppPages.systemData,
      page: () => SystemDataPage(),
    ),
    GetPage(
      name: AppPages.register,
      page: () => RegisterNewUserPage(),
    ),
    GetPage(
      name: AppPages.changePassword,
      page: () => ChangePasswordPage(),
    ),
    GetPage(
      name: AppPages.changePasswordNormal,
      page: () => ChangePasswordNormalPage(),
    ),
  ];

}
