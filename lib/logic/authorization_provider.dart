import 'package:hive/hive.dart';
import 'package:unet/core/http_service.dart';
import 'package:unet/logic/model/authorization_request.dart';
import 'package:unet/logic/model/authorization_response.dart';
import 'package:unet/logic/service/authorization_services.dart';

HttpService _httpService = HttpService();
var keyBox;

class AuthorizationProvider {
  static const String successStatus = 'SUCCESS';

  Future<AuthorizationResponse> getAuthorization(
      String username, String password) async {
    var service = AuthorizationServices(_httpService.dio);
    AuthorizationResponse responseAuthorization =
        await service.getAuthorization(
            AuthorizationRequest(username: username, password: password));
    if (responseAuthorization.access != null &&
        responseAuthorization.refresh != null) {
      print('gggggggggggggggggR');
      keyBox = Hive.isBoxOpen('HiveToken')
          ? Hive.box('HiveToken')
          : await Hive.openBox('HiveToken');
      keyBox.put('tokenZ',[responseAuthorization.access,responseAuthorization.refresh]);
      return responseAuthorization;
    } else {
      throw 'Ошибка';
    }
  }
}
