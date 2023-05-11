import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:unet/core/base_url.dart';
import 'package:unet/logic/authorization_provider.dart';

class HttpService {
  late Dio _dio;
  Dio get dio => _dio;

  HttpService() {
    _dio = Dio(BaseOptions(baseUrl: Url.baseUrl));
  }
  Future<Response?> getRequest(String endPoint) async {
    Response response;
    try {
      response = await dio.get(endPoint);
    } on DioError catch (e) {
      throw Exception(e.message);
    }
    return response;
  }

  initializeInterceptors() {
    _dio.interceptors.add(QueuedInterceptorsWrapper(
        onError: (error, errorInterceptorHandler) {
          errorInterceptorHandler.reject(DioError(
              error: error.error, requestOptions: error.requestOptions));
          if (error.response != null) {
            if (error.response?.statusCode == 401 ||
                error.response?.statusCode == 403) {
              throw Exception('Error 401');
              // print("Ошибка 401");
            }
          }
          return;
        },
        onRequest: (request, requestInterceptorHandler) async {
        keyBox = Hive.isBoxOpen('HiveToken')
            ? Hive.box('HiveToken')
            : await Hive.openBox('HiveToken');

        request.headers["Authorization"] = 'Bearer ${keyBox.get('tokenZ')}';

        requestInterceptorHandler.next(request);
      },
      onResponse: (response, responseInterceptorHandler) {
        responseInterceptorHandler.next(response);
      },));
  }
}
