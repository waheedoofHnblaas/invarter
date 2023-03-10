import 'package:invarter/core/class/crud.dart';
import 'package:invarter/links.dart';

class InverterSettingsData {
  Crud crud;

  InverterSettingsData(this.crud);

  getInverterSettingsData({
    required String token,
  }) async {
    var response = await crud.getData(
      AppLinks.getInverterSettingsInfo,
      {
        'Authorization': 'Token $token',
        'Cookie':
            'csrftoken=385oyF7WQwaLuhViutOdA74mQSxbBBr8; sessionid=k4tjidt9jks9qhgwlfc100v121cq141o',
      },
    );
    return response.fold((l) => l, (r) => r);
  }
}
