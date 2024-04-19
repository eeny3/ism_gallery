import 'package:injectable/injectable.dart';
import 'package:ism/data/search_reslut_model/search_result_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'client.g.dart';

@lazySingleton
@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @factoryMethod
  static RestClient create(Dio dio) {
    return RestClient(dio);
  }

  @GET("")
  Future<SearchResultModel> getImages(
    @Query('q') String query,
    @Query('page') int page,
    @Query('per_page') int perPage,
  );
}
