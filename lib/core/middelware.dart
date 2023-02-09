// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:invarter/core/constant/approutes.dart';
// import 'package:invarter/route.dart';
//
// import 'services/services.dart';
//
// class MiddleWare extends GetMiddleware {
//   @override
//   int? get priority => 1;
//   final MyServices _myServices = Get.find();
//
//   @override
//   RouteSettings? redirect(String? route) {
//     if (_myServices.sharedPreferences.getString('username') != null) {
//       return  RouteSettings(name: AppPages.login,arguments: [
//         _myServices.sharedPreferences.getString('username'),
//         _myServices.sharedPreferences.getString('password'),
//       ]);
//     }
//     // if (_myServices.sharedPreferences.getString('step') == '2') {
//     //   return RouteSettings(name: AppRoute.home);
//     // }
//   }
// }
