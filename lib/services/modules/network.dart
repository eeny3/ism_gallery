import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ism/services/networking/interceptors/auth_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio getDio() => Dio()
    ..options.baseUrl = 'https://pixabay.com/api/'
    ..options.headers['accept'] = '*/*'
    ..interceptors.addAll(
      [
        AuthInterceptor(),
        PrettyDioLogger(),
      ],
    );
}