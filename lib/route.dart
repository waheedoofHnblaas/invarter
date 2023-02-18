import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:invarter/view/screens/auth_screens/changePassword.dart';
import 'package:invarter/view/screens/auth_screens/change_password_normal.dart';
import 'package:invarter/view/screens/auth_screens/login.dart';
import 'package:invarter/view/screens/auth_screens/registerNewUser.dart';
import 'package:invarter/view/screens/home_screens/editeInverterSettings.dart';
import 'package:invarter/view/screens/home_screens/system_data.dart';
import 'view/screens/home_screens/inverterSettings.dart';

class AppPages {
  static const register = '/register';
  static const login = '/';
  static const systemData = '/systemData';
  static const changePassword = '/changePassword';
  static const changePasswordNormal = '/changePasswordNormal';

  static const powerData = '/powerData';
  static const inverterData = '/inverterData';
  static const inverterSettings = '/inverterSettings';
  static const editeInverterSettingsPage = '/editeInverterSettingsPage';
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
      page: () => const SystemDataPage(),
    ),
    GetPage(
      name: AppPages.register,
      page: () => const RegisterNewUserPage(),
    ),
    GetPage(
      name: AppPages.changePassword,
      page: () => const ChangePasswordPage(),
    ),
    GetPage(
      name: AppPages.changePasswordNormal,
      page: () => const ChangePasswordNormalPage(),
    ),
    GetPage(
      name: AppPages.inverterSettings,
      page: () => const InverterSettingsPage(),
    ),
    GetPage(
      name: AppPages.editeInverterSettingsPage,
      page: () => EditeInverterSettingsPage(),
    ),
  ];


}
