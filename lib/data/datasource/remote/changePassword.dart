import 'package:invarter/core/class/crud.dart';
import 'package:invarter/links.dart';

class ChangePasswordData {
  Crud crud;

  ChangePasswordData(this.crud);

  changePasswordData({
    required String new_password1,
    required String new_password2,
    required String token,
    required bool normal,
  }) async {
    var response = await crud.postData(
      normal ? AppLinks.change_password_normal : AppLinks.change_password,
      {
        'Authorization': 'Token $token',
        'Cookie':
            'csrftoken=ZwHmA1NH6w0C2XW7Uf4H9jjfAHaABwne; sessionid=fpxlzwjbgv4bs358yl05dyhubebetula'
      },
      {
        'new_password1': new_password1,
        'new_password2': new_password2,
      },
    );
    return response.fold((l) => l, (r) => r);
  }
}
