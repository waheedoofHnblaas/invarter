class AppLinks {
  static const String serverLink = 'http://192.168.1.101:8000';

  //192.168.43.206

  // =============================Images=================================

  //========================    Auth    ===========================
  static const String signUpLink = '$serverLink/rest-auth/login/';
  static const String loginLink = '$serverLink/rest-auth/login/';
  static const String registeration = '$serverLink/rest-auth/registration/';
  static const String change_password =
      '$serverLink/rest-auth/password/change/';
  static const String change_password_normal =
      '$serverLink/rest-auth/normal/password/change/';

  //========================    home    ===========================
  static const String getUserDetails = '$serverLink/rest-auth/user/';

//========================    Forget Password    ===========================

}
