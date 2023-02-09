import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:invarter/core/middelware.dart';
import 'package:invarter/view/screens/auth_screens/login.dart';
import 'package:invarter/view/screens/auth_screens/register.dart';
import 'package:invarter/view/screens/dataInterring/inverterData.dart';
import 'package:invarter/view/screens/home_screens/system_data.dart';

import 'view/screens/dataInterring/powerdata.dart';

class AppPages {
  static const register = '/register';
  static const login = '/';
  static const powerData = '/powerData';
  static const inverterData = '/inverterData';
  static const systemData = '/systemData';

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
  ];
}
