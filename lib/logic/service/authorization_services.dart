import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:unet/core/base_url.dart';
import 'package:unet/logic/model/authorization_request.dart';
import 'package:unet/logic/model/authorization_response.dart';

part 'authorization_services.g.dart';

@RestApi(baseUrl: Url.baseUrl)
abstract class AuthorizationServices {
  factory AuthorizationServices(Dio dio, {String baseUrl}) =
      _AuthorizationServices;

  @POST("/account/token/")
  Future<AuthorizationResponse> getAuthorization(
      @Body() AuthorizationRequest payload);
}
