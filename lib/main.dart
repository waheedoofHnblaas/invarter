import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:invarter/core/constant/colors.dart';
import 'package:invarter/core/services/services.dart';
import 'package:invarter/initialbinding.dart';
import 'package:invarter/route.dart';
import 'package:get/get.dart';
Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.textColor, // navigation bar color
      statusBarColor: AppColors.textColor, // status bar color
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialBinding: InitialBinding(),
      theme: ThemeData(
        backgroundColor: AppColors.background,
        appBarTheme: AppBarTheme(
          elevation: 0,
          foregroundColor: AppColors.textColor,
          backgroundColor: AppColors.background,
          centerTitle: true,
        ),
        primaryColor: AppColors.textColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: AppColors.textColor),
          bodyText2: TextStyle(color: AppColors.connectCardColor,fontWeight: FontWeight.bold,fontSize: 24),
        ),
        fontFamily: 'Cairo',
      ),
    );
  }
}
