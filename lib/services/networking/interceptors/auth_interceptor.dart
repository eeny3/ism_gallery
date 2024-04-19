import 'package:dio/dio.dart';

const _authorizationHeader = 'key';
const _apiKey = '43466621-3e80f6e93bf2274a77c4cdbd1';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters[_authorizationHeader] = _apiKey;
    super.onRequest(options, handler);
  }
}
